Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592239B1A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zDFyzPOX+8zQdiDLXWodTaEXKDwDNih78Hgv9OI50Ek=; b=Vd0Q95wzTBksKQbjV9qsm6ktW
	qXP95nJILvtY6GGalx2DDEjtw5V4LOTPbZm9Ks4v1enWFj/tnhikSwQ+PtHxrgZJ43NyKSZCGQdOD
	qqUfs3DFJr7V3VqxkkVSCvx7f7Rnju2pz/Ih8Y58nnqMJzuPXXyUkjjvuuNdnSjLW6+JCxGu4xo0g
	5umcJ1XncFxplQD3EIbWBRs7+fomQyFyoAbIdgG5/liV8OalkB9yoMGS8gjj6L8VcaOmf9qo2K/JL
	uYrpQToOv95jVjyeRGgV7UCIjpNk+s5QLrF9jWWlyREL24jN+LjKlniLjYBqmgG70O4zjBSx270nt
	Yxm6XdVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AFF-0001Zr-19; Fri, 23 Aug 2019 14:08:49 +0000
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AF7-0001Yz-H2
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:08:43 +0000
Received: from [192.168.1.41] ([90.126.160.115]) by mwinf5d06 with ME
 id se8M200092Vh0YS03e8M18; Fri, 23 Aug 2019 16:08:36 +0200
X-ME-Helo: [192.168.1.41]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 23 Aug 2019 16:08:36 +0200
X-ME-IP: 90.126.160.115
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_ethernet=3a_Delete_unnecessary_checks_b?=
 =?UTF-8?Q?efore_the_macro_call_=e2=80=9cdev=5fkfree=5fskb=e2=80=9d?=
To: Markus Elfring <Markus.Elfring@web.de>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, intel-wired-lan@lists.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, UNGLinuxDriver@microchip.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Allison Randal <allison@lohutok.net>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Douglas Miller <dougmill@linux.ibm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jilayne Lovejoy <opensource@jilayne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jose Abreu
 <joabreu@synopsys.com>, Kate Stewart <kstewart@linuxfoundation.org>
References: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
Date: Fri, 23 Aug 2019 16:08:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_070841_862963_AF07BC9B 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.125 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgppbiB0aGlzIHBhdGNoLCB0aGVyZSBpcyBvbmUgcGllY2UgdGhhdCBsb29rZWQgYmV0dGVy
IGJlZm9yZS4gKHNlZSBiZWxvdykKClJlbW92aW5nIHRoZSAnaWYgKHNrYiknIGlzIGZpbmUsIGJ1
dCBjb25jYXRlbmluZyBldmVyeXRoaW5nIGluIG9uZSAKc3RhdGVtZW50IGp1c3QgdG8gc2F2ZSAy
IHZhcmlhYmxlcyBhbmQgYSBmZXcgTE9DIGlzIG9mIG5vIHVzZSwgSU1ITywgYW5kIAp0aGUgY29k
ZSBpcyBsZXNzIHJlYWRhYmxlLgoKanVzdCBteSAyYy4KCgpDSgoKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21nZW5ldC5jIApiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0L2JjbWdlbmV0LmMKaW5kZXggZDNhMGI2MTRkYmZhLi44
YjE5ZGRjZGFmYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dl
bmV0L2JjbWdlbmV0LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vZ2VuZXQv
YmNtZ2VuZXQuYwpAQCAtMjUxNSwxOSArMjUxNSwxNCBAQCBzdGF0aWMgaW50IGJjbWdlbmV0X2Rt
YV90ZWFyZG93bihzdHJ1Y3QgCmJjbWdlbmV0X3ByaXYgKnByaXYpCiDCoHN0YXRpYyB2b2lkIGJj
bWdlbmV0X2ZpbmlfZG1hKHN0cnVjdCBiY21nZW5ldF9wcml2ICpwcml2KQogwqB7CiDCoMKgwqDC
oCBzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICp0eHE7Ci3CoMKgwqAgc3RydWN0IHNrX2J1ZmYgKnNrYjsK
LcKgwqDCoCBzdHJ1Y3QgZW5ldF9jYiAqY2I7CiDCoMKgwqDCoCBpbnQgaTsKCiDCoMKgwqDCoCBi
Y21nZW5ldF9maW5pX3J4X25hcGkocHJpdik7CiDCoMKgwqDCoCBiY21nZW5ldF9maW5pX3R4X25h
cGkocHJpdik7CgotwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBwcml2LT5udW1fdHhfYmRzOyBpKysp
IHsKLcKgwqDCoMKgwqDCoMKgIGNiID0gcHJpdi0+dHhfY2JzICsgaTsKLcKgwqDCoMKgwqDCoMKg
IHNrYiA9IGJjbWdlbmV0X2ZyZWVfdHhfY2IoJnByaXYtPnBkZXYtPmRldiwgY2IpOwotwqDCoMKg
wqDCoMKgwqAgaWYgKHNrYikKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2tmcmVlX3NrYihz
a2IpOwotwqDCoMKgIH0KK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgcHJpdi0+bnVtX3R4X2Jkczsg
aSsrKQorIGRldl9rZnJlZV9za2IoYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+cGRldi0+ZGV2
LAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJp
di0+dHhfY2JzICsgaSkpOwoKIMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBwcml2LT5od19wYXJh
bXMtPnR4X3F1ZXVlczsgaSsrKSB7CiDCoMKgwqDCoMKgwqDCoMKgIHR4cSA9IG5ldGRldl9nZXRf
dHhfcXVldWUocHJpdi0+ZGV2LCBwcml2LT50eF9yaW5nc1tpXS5xdWV1ZSk7CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
