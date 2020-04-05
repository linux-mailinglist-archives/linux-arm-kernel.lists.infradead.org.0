Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD919ECC0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 18:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SEP55fq+cMa764+qzO/0Hmb0dED85KxgxYvSZ2R+LPc=; b=cZi2diSjyL3CGd
	0hsnXsLRXdTfAL89dt72UNhjcPQ+3Fjx59hL5DjFXUTLUR+gtDxKwXwZ0T3a8JPpq9pDaaZZrmSbx
	M23HMLm7FmDXcAsjye/ScXsMS9V1+YQXMSSy7lTMnFRZ/y7FFpAg2HSoCvlLyv0kX1+BLxIgKqVlr
	eJA5/ZwQxpZmY7pM9ZkRp1R0PJ9uMnP2a/1yGbNLjQAYNWark+ODnkn5OgOH7/rUDA0uLpsRCK1np
	X863+8ejqDjbXPAkEZ28RcpFuansEp+iJTY9g979n5cTuD1MvTI8JLD01rS1UI34gWjeRYxuOinaC
	8e8G1z4PhvPpdOhp9HuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL8Uo-0008Uc-9z; Sun, 05 Apr 2020 16:51:42 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL8Uh-0008UE-GN; Sun, 05 Apr 2020 16:51:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586105441;
 bh=0YkSt5BcPX9ZJY8/TNdXEE7Js5ClyUIYnLeTWxyJu/Y=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=H6dpbL4NJlpbw1+XZb+6L/eGOman52ihDO/AIarLK0MtETnB8q5WFWzHHImwj0WSk
 Ih26agawpGTRQFDoKCZ14NYfjK4xK31f+jaGdkWOuettOhLJYYi7gA2eRt1EfHaKqU
 pNeq29ypL2mvTSX/Jbtos5WFq/+ela1HeknA6nbA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MPHKO-1jPYKf28rg-004Vck; Sun, 05
 Apr 2020 18:50:41 +0200
To: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-omap@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Allison Randal <allison@lohutok.net>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Clark Williams <williams@redhat.com>,
 Colin Ian King <colin.king@canonical.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Keerthy
 <j-keerthy@ti.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Pascal Paillet <p.paillet@st.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Zhang Rui <rui.zhang@intel.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] thermal: Delete an error message in four functions
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <05f49ae7-5cc7-d6a0-fc3d-abaf2a0b373c@web.de>
Date: Sun, 5 Apr 2020 18:50:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:9ZhlZktT91pfbtbXRm+mTr0dzyW0rFCf8ipUz74Hg6LrC70wyT3
 lgjget/+5B+v9e+XtCQhsiEWa3oYKGUxLwy/+16UFw9QBT7VDwPxyM6dCiB1jioWi3d4Dun
 ML0SUPIN7MIt4nv1gt3EZ8XCxPkEg46lkgVeLOb6MWzJTeAhBrn8nYSpEZW5GnakmEhF5Yp
 huyo983s7iSI3UbIrdpJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m0U7kNMqr14=:dv3CgYtVpGQVFYuC0r/Vx5
 YNeBV5WDA756pnx2kjt5nIWU8boJcoOjypBLmzLgJTpy9mXm4PEJRAG4QN6/pxXQyRnTbZSbI
 A0NSZmwTFCfOnYC5iYQSnZWrbaEpzfjZhgUf/SZ0mDMXS4ftkKTTuatf2RSzQCZFoejdz9Hw8
 cm6OaB28hgMvLG4tUDaMEMutfixS6P/ohSg7ugLasRdUx8kzm/Qrg3soCoPVwSTIXgo2iKwHi
 F8VRVy11ZkhsPDlAjl0ERPVu/YuAcvrs3kT9PbnJ7lyeHyuc9vOwXoEbAR0fgA429xEpM7pT3
 oTRQbKPsbkhQzwj0k7dsk9Wz16j4qoG9QbkEiMg/h9WuP16Nm4j852KFaCSCKia4GdEbwVbeE
 7N6ZUupaAuDHaFevdBcdsg8tJviighjDxUA96PREW8pypalaTO1nUACHvnnpDdHH1W6POTp+o
 r6Cjyqc9Twwm58iRfnlhU366rzje1enGS4siPXJszpwIlNry/qatNplAW+2evmNgtQBSIOT9B
 B4uqQ11pfJMX/1ROnA93I247aT/Kdktt9Vc2DJG3CK9yGV0kfvkeDCKjfdmR7cfpglWmysTKv
 xeIaEVjFjvXRdVtRRkEl4Riqh24X01nSyLTFfmklc6e6JeE0qAe9wzNHxZbFKG8UJk9wLDc0R
 dMO/hDizFjqHSLvI19DJhyuxEpP83mXnL78A92I26CE4vNimkhLgN+8tfJUyGpYA8TPxU08bH
 bHlenCrSNcdXdsKJxb/stLj7AX5SW17uIGmUY3ItFgPtX/2STeKclMhWil+oPbWNVQqtJPpwJ
 guIxLqK89gBeAOme1CdIksGr5p96h8EBBJh0KKLhfu7MhwRaodqgMW3hluCGas/J+aTEE3ktM
 G1acyNfb7eYn7tA6M56GOEVNqLaelktdgauk+cioS9P84pnjpI1YvktbcWUk9h8ke6izj+3RU
 SmAc4OCmJXgIy0fLtxrJQ2Nr/TTJnV2sTWTLV6XJwpxtpbKGwmP2I+65/T+OLVteWFzOqFTaP
 JnrI6EoSiuyIQvefCzps9lmScsgMoYBfJ/S206lHv+yGItg20lsqCBlN1h+neJANSlWNdlwug
 ALnBiWq29KkDZZkosMSV2GIdN/k45SSWZ96K7cj+JNsF0+WJHI1nVzHAKHdkL3TSPejo6s9Ig
 RdWFZvEaXDMhGoiYr9Xt7O0bDcrkWglBcPV/Em/29BmGbYm+uRs25qy3T7eW1nZQfz3lUYmMg
 EuHOTflLBO5PdtXHm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_095135_841722_8ABDC7B4 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTdW4sIDUgQXByIDIwMjAgMTg6MzU6MTYgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IHJlZHVuZGFu
dCBtZXNzYWdlcyBmb3IgdGhlIGV4Y2VwdGlvbiBoYW5kbGluZyBpbiB0aGUKY2FsbGluZyBmdW5j
dGlvbnMuCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jICAg
ICAgICAgIHwgNCArLS0tCiBkcml2ZXJzL3RoZXJtYWwvc3Qvc3RfdGhlcm1hbF9tZW1tYXAuYyAg
ICAgIHwgNCArLS0tCiBkcml2ZXJzL3RoZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYyAgICAgICAgICAg
IHwgNCArLS0tCiBkcml2ZXJzL3RoZXJtYWwvdGktc29jLXRoZXJtYWwvdGktYmFuZGdhcC5jIHwg
NSArKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCmluZGV4IDdjMWE4YmNjZGNiYS4uMTVhNzFl
Y2M5MTZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCisr
KyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKQEAgLTEyNDEsMTAgKzEyNDEs
OCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAkJcmV0dXJuIC1FTlhJTzsKCiAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShw
ZGV2LCAwKTsKLQlpZiAoaXJxIDwgMCkgewotCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJubyBpcnEg
cmVzb3VyY2U/XG4iKTsKKwlpZiAoaXJxIDwgMCkKIAkJcmV0dXJuIC1FSU5WQUw7Ci0JfQoKIAl0
aGVybWFsID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZihzdHJ1Y3Qgcm9ja2NoaXBf
dGhlcm1hbF9kYXRhKSwKIAkJCSAgICAgICBHRlBfS0VSTkVMKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdGhlcm1hbC9zdC9zdF90aGVybWFsX21lbW1hcC5jIGIvZHJpdmVycy90aGVybWFsL3N0L3N0
X3RoZXJtYWxfbWVtbWFwLmMKaW5kZXggYTgyNGI3OGRhYmY4Li5hMDExNDQ1MmQxMWYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdF90aGVybWFsX21lbW1hcC5jCisrKyBiL2RyaXZl
cnMvdGhlcm1hbC9zdC9zdF90aGVybWFsX21lbW1hcC5jCkBAIC05NCwxMCArOTQsOCBAQCBzdGF0
aWMgaW50IHN0X21tYXBfcmVnaXN0ZXJfZW5hYmxlX2lycShzdHJ1Y3Qgc3RfdGhlcm1hbF9zZW5z
b3IgKnNlbnNvcikKIAlpbnQgcmV0OwoKIAlzZW5zb3ItPmlycSA9IHBsYXRmb3JtX2dldF9pcnEo
cGRldiwgMCk7Ci0JaWYgKHNlbnNvci0+aXJxIDwgMCkgewotCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byByZWdpc3RlciBJUlFcbiIpOworCWlmIChzZW5zb3ItPmlycSA8IDApCiAJCXJldHVybiBz
ZW5zb3ItPmlycTsKLQl9CgogCXJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBz
ZW5zb3ItPmlycSwKIAkJCQkJTlVMTCwgc3RfbW1hcF90aGVybWFsX3RyaXBfaGFuZGxlciwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jIGIvZHJpdmVycy90aGVy
bWFsL3N0L3N0bV90aGVybWFsLmMKaW5kZXggOTMxNGUzZGY2YTQyLi4zMzFlMmI3NjhkZjUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jCisrKyBiL2RyaXZlcnMv
dGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jCkBAIC0zODUsMTAgKzM4NSw4IEBAIHN0YXRpYyBpbnQg
c3RtX3JlZ2lzdGVyX2lycShzdHJ1Y3Qgc3RtX3RoZXJtYWxfc2Vuc29yICpzZW5zb3IpCiAJaW50
IHJldDsKCiAJc2Vuc29yLT5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwotCWlmIChz
ZW5zb3ItPmlycSA8IDApIHsKLQkJZGV2X2VycihkZXYsICIlczogVW5hYmxlIHRvIGZpbmQgSVJR
XG4iLCBfX2Z1bmNfXyk7CisJaWYgKHNlbnNvci0+aXJxIDwgMCkKIAkJcmV0dXJuIHNlbnNvci0+
aXJxOwotCX0KCiAJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShkZXYsIHNlbnNvci0+
aXJxLAogCQkJCQlOVUxMLApkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3RpLXNvYy10aGVy
bWFsL3RpLWJhbmRnYXAuYyBiL2RyaXZlcnMvdGhlcm1hbC90aS1zb2MtdGhlcm1hbC90aS1iYW5k
Z2FwLmMKaW5kZXggMjYzYjA0MjBmYmU0Li5hYjE5Y2VmZjZlMmEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvdGhlcm1hbC90aS1zb2MtdGhlcm1hbC90aS1iYW5kZ2FwLmMKKysrIGIvZHJpdmVycy90aGVy
bWFsL3RpLXNvYy10aGVybWFsL3RpLWJhbmRnYXAuYwpAQCAtNzcyLDEwICs3NzIsOSBAQCBzdGF0
aWMgaW50IHRpX2JhbmRnYXBfdGFsZXJ0X2luaXQoc3RydWN0IHRpX2JhbmRnYXAgKmJncCwKIAlp
bnQgcmV0OwoKIAliZ3AtPmlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Ci0JaWYgKGJn
cC0+aXJxIDwgMCkgewotCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXRfaXJxIGZhaWxlZFxuIik7
CisJaWYgKGJncC0+aXJxIDwgMCkKIAkJcmV0dXJuIGJncC0+aXJxOwotCX0KKwogCXJldCA9IHJl
cXVlc3RfdGhyZWFkZWRfaXJxKGJncC0+aXJxLCBOVUxMLAogCQkJCSAgIHRpX2JhbmRnYXBfdGFs
ZXJ0X2lycV9oYW5kbGVyLAogCQkJCSAgIElSUUZfVFJJR0dFUl9ISUdIIHwgSVJRRl9PTkVTSE9U
LAotLQoyLjI2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
