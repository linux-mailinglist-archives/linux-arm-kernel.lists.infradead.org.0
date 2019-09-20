Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB95B8F05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnooUpJ0YdsJOffyY2gvYS01/z49M3qzDELlpBUBIf8=; b=A3ZDWu8jT1s3Ve
	gEYgYo9Aa0J5Ij9diihO5Z3ZJ2ZhBBXMjb1EPdqSgIMjYm4uwtroxKRcp9qroMIWc4S4Fk4luSLQ0
	w4OQE3paqC7uv4KOgjgeSA3a5ByCL0XWO2Jtbtj/V3A5aC0o33F0omiZmi2SRbSIpzOzfF6RpjlfW
	iUqIsqfxGKWKiwqLWcaGakDV0nGvAsPqk3gUnROGy0gNtUrKWJ5ex/G+QfvMg+cfBi6xPrzgY3S4v
	GgzamY5oVpUj0oCoZ+xm+An/ISfdqM3BZTLpnyGk8TDVoNYIt4SPSYNJTCh8CdzXSL2Ba7Qyu0bCo
	aidgFlk0GXzzyrYIuxIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBH7s-0001aX-1j; Fri, 20 Sep 2019 11:31:00 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBH7k-0001a8-Sh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1568979037;
 bh=6u/lrL0YjFWeNKufdCoJnqJ/iIRy/jFjcRoEoLmbNRg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=bsXxou1FKiQZZOXDYnHT2F3sFl4uBqiUv5k4bjUI2VFQQEsaisZymicPD2v1g21EB
 tbn79Nlql7TKrJeVUeG4yHm7dMvTmh4dKQPxRNsszBKeBESnOhmJO2g01njMhaLDmN
 MIRiUfrTgWyzWXcI+jVw1lPrbMJRNCTgqaQ8YvIw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.117.22]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LnBTZ-1hhh7g28R3-00hKw8; Fri, 20
 Sep 2019 13:30:37 +0200
Subject: [PATCH v2] ethernet: axienet: Use devm_platform_ioremap_resource() in
 axienet_probe()
To: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, Michal Simek <michals@xilinx.com>,
 Radhey Shyam Pandey <radheys@xilinx.com>
References: <af65355e-c2f8-9142-4d0b-6903f23a98b2@web.de>
 <CH2PR02MB700047AFFFE08FE5FD563541C78E0@CH2PR02MB7000.namprd02.prod.outlook.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <604a6376-0298-ebcd-ee84-435945370374@web.de>
Date: Fri, 20 Sep 2019 13:30:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CH2PR02MB700047AFFFE08FE5FD563541C78E0@CH2PR02MB7000.namprd02.prod.outlook.com>
Content-Language: en-US
X-Provags-ID: V03:K1:6SRgYF57pdwisiSOfQg1UlbC32Jh8S0JVlx+KF5kzO9pVIQbQ2K
 iRjI+uMuwp2Dh6DhZKSc9QSQhmgk96hR1spxlpNLq+TUzfYzhB4EjgMoHGWTKwAO4thnf0p
 S4WbEy8DT62mC5yIO7GvaDBYoSDLgX2svhNSxlA3dvG5V6r0oElMxaCowKGsZZZwIowAmaI
 8kwv2IqrC5n/HAqzYkGUw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qeu4r5QVVrQ=:yP+b0esX9R5pV6FoUHsJbD
 5b4yGkvMRHiG45WlgYxnYfewaZT5f9DkNHWpTJ62I5Yb/X55s+NsebxepbvNVAuWD0pf56obg
 iFIIJNWDoNtaElbJvySPOp2kL5UkytO0jKkkxEPZwyzQY5+s2wG98WDvl5gIL5vj7j5hIE80m
 ta7HosB+bLPJ8o0aoX9z2UtU0Tjw56jLFWhxpvmlE90usD6DNxrQrPJdvSt5oEQiPGs5hvBtA
 evxtiFwv8kV0YRBJr35RdzqqVfhQyzMPYGgoVWPAa6K4qurQhTfYJXGS8h/baUz24Qbx4uf3C
 GIpuvz+RscL06kHJHcVo7laCFPOr5e3MwYz5jZtR1JMWdBpBUtugEIQJrkGnLfZiIsG+10IBl
 HAmxT149FTFmZ0JWIwj+TgyK7Xo8bcnhMT0r+VFp6UD1zMfvntHdmK/Lb97tcad5Opos5U3OZ
 bRHBO9yaCr0RAq89eVFMaYIltua95IXBL3hXhYHONUOX6ckfTqEGgXtq52RE6KTolskMQoT7p
 S3FMajIeg3Ys7BdZde5InniIaNPtMZ6UMJiAtfUMEzPr2o5HRCv0XiMxAe4eHBMJ5IKXnqjO2
 TFn101EXT0PaJsJ4y8ty0T6PRrxpVFNkphq3OaH2hpU5ljweCvANAUPvzpflmvrsWaViInBz4
 3Y1jXDLrQevanKpOrJXJMkqnlLcIx1kbPFii+pk8VOKQMle9HlTJvCs4gv6wiB+76ZjX8jmr6
 2NgFXmefu/aDRvKjqjZNYlltDw+jPYpTZhD84Ezf9ata7kREcQTyBYH+eG25v25l0CuQBfYKJ
 Rh7EFNFm5hGXfiTLXcjiGlOQWeWDHVZ0PPc631jp68UOcm1eRDEp1ksAKQclz6TzLTTkNXgob
 9rTKCNu4JuCJz1QrX/eln19HttnDNv6sUDYliuUif9VKN//nvvM1EOc6DvhhvsWA5ClqIdPa5
 A70ZMr1cRAUTcSGSF33Htzrr3tk6c84ERnV82t8ESgv32jE5YjUKwmpG1CgeW2Yv8xU7r0PbG
 akZhmFxsjhIeMxP8Hj/R+2HB2L2vx6K5FOx1C8AXCNzbm6Okjx3EHKyU4ml0/Ie33o9a9oep+
 hSWjZmBfQPhqOPPamOX689V0COjHw3fTT/s748wW+NLX6PzQ/DYjW/2cuC27f3fucZHQ0IMF5
 9tLxeg0u9myVvyKX/iiB+/DJBETdiPrb0sx6EkgI98fSgQloKCgJPgBHTWIjNtW5vCZBYZ5et
 +jj/4zviV3UETxY/XkZ4ndw7x15L69SXps8UeS90nn7FDhgJHzv19NVyW4P0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_043053_224811_616B4AA3 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBGcmksIDIwIFNlcCAyMDE5IDEzOjE3OjAxICswMjAwCgpTaW1wbGlmeSB0aGlzIGZ1bmN0aW9u
IGltcGxlbWVudGF0aW9uIGJ5IHVzaW5nIHRoZSB3cmFwcGVyIGZ1bmN0aW9uCuKAnGRldm1fcGxh
dGZvcm1faW9yZW1hcF9yZXNvdXJjZeKAnSBpbnN0ZWFkIG9mIGNhbGxpbmcgdGhlIGZ1bmN0aW9u
cwrigJxwbGF0Zm9ybV9nZXRfcmVzb3VyY2XigJ0gYW5kIOKAnGRldm1faW9yZW1hcF9yZXNvdXJj
ZeKAnSBkaXJlY3RseS4KCiogVGh1cyByZWR1Y2UgYWxzbyBhIGJpdCBvZiBleGNlcHRpb24gaGFu
ZGxpbmcgY29kZSBoZXJlLgoqIERlbGV0ZSB0aGUgbG9jYWwgdmFyaWFibGUg4oCccmVz4oCdLgoK
VGhpcyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVsbGUgc29mdHdhcmUu
CgpTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3Jn
ZS5uZXQ+Ci0tLQoKdjI6CkZ1cnRoZXIgY2hhbmdlcyB3ZXJlIHJlcXVlc3RlZCBieSBSYWRoZXkg
U2h5YW0gUGFuZGV5LgpodHRwczovL2xvcmUua2VybmVsLm9yZy9yL0NIMlBSMDJNQjcwMDA0N0FG
RkZFMDhGRTVGRDU2MzU0MUM3OEUwQENIMlBSMDJNQjcwMDAubmFtcHJkMDIucHJvZC5vdXRsb29r
LmNvbS8KCiogVXBkYXRlcyBmb3IgdGhyZWUgbW9kdWxlcyB3ZXJlIHNwbGl0IGludG8gYSBzZXBh
cmF0ZSBwYXRjaCBmb3IgZWFjaCBkcml2ZXIuCiogVGhlIGNvbW1pdCBkZXNjcmlwdGlvbiB3YXMg
YWRqdXN0ZWQuCgoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9t
YWluLmMgfCA5ICstLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxp
bnhfYXhpZW5ldF9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2F4
aWVuZXRfbWFpbi5jCmluZGV4IDRmYzYyN2ZiNGQxMS4uOTI3ODNhYWFhMGEyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2F4aWVuZXRfbWFpbi5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMKQEAgLTE3
ODcsMTQgKzE3ODcsNyBAQCBzdGF0aWMgaW50IGF4aWVuZXRfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAkJb2Zfbm9kZV9wdXQobnApOwogCQlscC0+ZXRoX2lycSA9IHBsYXRm
b3JtX2dldF9pcnEocGRldiwgMCk7CiAJfSBlbHNlIHsKLQkJLyogQ2hlY2sgZm9yIHRoZXNlIHJl
c291cmNlcyBkaXJlY3RseSBvbiB0aGUgRXRoZXJuZXQgbm9kZS4gKi8KLQkJc3RydWN0IHJlc291
cmNlICpyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwKLQkJCQkJCQkgICAgIElPUkVT
T1VSQ0VfTUVNLCAxKTsKLQkJaWYgKCFyZXMpIHsKLQkJCWRldl9lcnIoJnBkZXYtPmRldiwgInVu
YWJsZSB0byBnZXQgRE1BIG1lbW9yeSByZXNvdXJjZVxuIik7Ci0JCQlnb3RvIGZyZWVfbmV0ZGV2
OwotCQl9Ci0JCWxwLT5kbWFfcmVncyA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2
LCByZXMpOworCQlscC0+ZG1hX3JlZ3MgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2Uo
cGRldiwgMSk7CiAJCWxwLT5yeF9pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDEpOwogCQls
cC0+dHhfaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKIAkJbHAtPmV0aF9pcnEgPSBw
bGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDIpOwotLQoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
