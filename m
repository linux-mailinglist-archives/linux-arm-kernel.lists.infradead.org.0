Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47563C770
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LALp6+z0cNHS+xP8BLAN3bSeKFln42ptivHdce4dT/0=; b=JN/vd2RDNTBvAXONvEyeqgQ0ft
	onhsozeDevFl6hXlC4rnIZQTt9hedKr+73/6Sn6gaY9su2fCdEPyGCyRTfMjuRr8xpb/nOvfg/goI
	eYrkCczFfvupUTzNReI5abyZkRyfIBl+qczvTE3PbfWkBTUHOq+tD73lpoFfU6PJ0LYHPLFAhdxi1
	952HM+ycpKPDI2JVmXibJN3a36GgRi9XlCwTwXVRTbgfIwnpKiItSRLdOLIL4rX3IkH34n37gBeGk
	CkOnXrjJUVWJUuLxY/+ZiJde7ZznbKXgkkGEqYm+qroXU/MNdsVcE6suoHVHQLoqTqDB7PGISSnNp
	TPj3ADfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadHk-00031w-5F; Tue, 11 Jun 2019 09:41:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadGY-00028e-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:40:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id c6so2135698wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 02:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=tbwYwBZvQIUPwGxsvzFNSCGEV3PM5xX5K20ThyWf2Gw=;
 b=KupoRQM49cm7dyzTnItVnBSZFeaYdBSe0ZuPUc5nm543IK3i8AQCFRRNVSc8aW8Rg5
 rNW2OOWjL7kKZEqPbfwxi1iZqT0mpPva68AwBz0FK2iGrshD16m/sUQKZ/s45Eac4oYk
 kdxbFn86aygmaNQDrqBL8fxCzD8PI+XGIa/oUCkKaKSPj0ieto+Nodwj4ebEvZH+w1AC
 VB5Gy94TnYUnAUtPLf6fE01E1bm45KvOEc9fOtzG00+4SEB8Ip8HXkZLJuKWFf/sJzHk
 E3+V/qYAHv2ahQFjT58iE9hfVelCt6t/io59t1va2f9j9WCwTdVKuZnurqob1kllHtzp
 EUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=tbwYwBZvQIUPwGxsvzFNSCGEV3PM5xX5K20ThyWf2Gw=;
 b=bMCFllqc78DptqKcq3UHTXVPwdIkV8iozO1EMH9ijxD4/Jnl2HYQYnJJF84ZRx5ddj
 zotbPqxrWEdXA/xYz8Gw8fVd7y3rXKB9v+mlo+OwU/tWSYp2h3aIsA0IbSjCcLESqh8R
 Od77IMxXvZAZQF3Kk/6eFA+wLxj/h+7l57/jpMtm1d1dNSMsVAzGbtAlYVQYIpkfzFWD
 NGOpa0ni3iS5rCOAA0ZKiI4C5BDr8D7cIbUjprVr/I1w0iUibBpTlE5/4R3YWfYOEM2K
 5kW6PyGuC6B+gfZoDyUEpENb3Jfb2nYGV7o+ntIkSXkxUo4rz7cmsJQv9OSh20EpdI/W
 RudA==
X-Gm-Message-State: APjAAAV9q+1FF6hGXdJWFSrDmpqvF1keQHYqtx5qboV1dWGKOXVMLPAe
 0eQn1EQT49hOD2ilaqA95NA=
X-Google-Smtp-Source: APXvYqy3oQm67xDIkvXCxUJBmZmO0RGMLs0/pxnYCLAu5ZBcSkNJMNan5v0PS3xwquS8WkCKKw77pQ==
X-Received: by 2002:a1c:e356:: with SMTP id a83mr17818025wmh.38.1560246028895; 
 Tue, 11 Jun 2019 02:40:28 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id r6sm6951244wrp.85.2019.06.11.02.40.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 02:40:27 -0700 (PDT)
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
 <m34l4xpweh.fsf@gmail.com>
 <722336d1-c7f7-1796-95d5-7bba1fac7968@armadeus.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <722336d1-c7f7-1796-95d5-7bba1fac7968@armadeus.com>
Date: Tue, 11 Jun 2019 10:40:22 +0100
Message-ID: <m3zhmo1mux.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024030_878176_3044FB04 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2ViYXN0aWVuLApPbiBUdWUgMTEgSnVuIDIwMTkgYXQgMDk6MTYsIFPDqWJhc3RpZW4gU3p5
bWFuc2tpIHdyb3RlOgo+IEhpIFJ1aSwKPgo+IHRoYW5rcyBmb3IgdGhlIHJldmlldyEKPgo+IE9u
IDYvMTAvMTkgMTI6MjggUE0sIFJ1aSBNaWd1ZWwgU2lsdmEgd3JvdGU6Cj4+IEhpIFNlYmFzdGll
biwKPj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4+Cj4+IE9uIFRodSAwNiBKdW4gMjAxOSBhdCAx
NjozOCwgU8OpYmFzdGllbiBTenltYW5za2kgd3JvdGU6Cj4+PiBpLk1YNyBhbmQgaS5NWDZVTC9M
IGhhdmUgdGhlIHNhbWUgQ1NJIGNvbnRyb2xsZXIuIFNvIGFkZCBpLk1YNlVML0wgc3VwcG9ydAo+
Pj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFPDqWJh
c3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KPj4+IC0t
LQo+Pj4KPj4+IENoYW5nZXMgZm9yIHYyOgo+Pj4gIC0gcmViYXNlIG9uIHRvcCBvZiBsaW51eHR2
L21hc3Rlcgo+Pj4gIC0gbWVudGlvbiBpLk1YNlVML0wgaW4gaGVhZGVyIGFuZCBLY29uZmlnIGhl
bHAgdGV4dAo+Pj4gIC0gcmVuYW1lIGNzaV90eXBlIHRvIGNzaV9zb2NfaWQKPj4+Cj4+PiAgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnICAgICAgICAgIHwgIDQgKy0KPj4+ICBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgfCA2MiArKysrKysrKysrKysr
KysrLS0tLS0tCj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBkZWxl
dGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9L
Y29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4+PiBpbmRleCBhZDNk
N2RmNmJiM2MuLjhiNmRjNDJjMzllMCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9pbXgvS2NvbmZpZwo+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29u
ZmlnCj4+PiBAQCAtMjIsMTEgKzIyLDExIEBAIGNvbmZpZyBWSURFT19JTVhfQ1NJCj4+PiAgCSAg
QSB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9yIGkuTVg1LzYu
Cj4+Pgo+Pj4gIGNvbmZpZyBWSURFT19JTVg3X0NTSQo+Pj4gLQl0cmlzdGF0ZSAiaS5NWDcgQ2Ft
ZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgo+Pj4gKwl0cmlzdGF0ZSAiaS5NWDZVTC9MIC8g
aS5NWDcgQ2FtZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgo+Pj4gIAlkZXBlbmRzIG9uIFZJ
REVPX0lNWF9NRURJQSAmJiBWSURFT19ERVYgJiYgSTJDCj4+PiAgCWRlZmF1bHQgeQo+Pj4gIAlo
ZWxwCj4+PiAgCSAgRW5hYmxlIHN1cHBvcnQgZm9yIHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3Ig
aW50ZXJmYWNlIGRyaXZlciBmb3IKPj4+IC0JICBpLk1YNy4KPj4+ICsJICBpLk1YNlVML0wgb3Ig
aS5NWDcuCj4+PiAgZW5kbWVudQo+Pj4gIGVuZGlmCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2lteC9pbXg3LW1lZGlhLWNzaS5jCj4+PiBpbmRleCA5MTAxNTY2ZjNmNjcuLjkwMmJkY2U1OTRj
ZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1j
c2kuYwo+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5j
Cj4+PiBAQCAtMSw2ICsxLDYgQEAKPj4+ICAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMAo+Pj4gIC8qCj4+PiAtICogVjRMMiBDYXB0dXJlIENTSSBTdWJkZXYgZm9yIEZyZWVzY2Fs
ZSBpLk1YNyBTT0MKPj4+ICsgKiBWNEwyIENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxl
IGkuTVg2VUwvTCAvIGkuTVg3IFNPQwo+Pj4gICAqCj4+PiAgICogQ29weXJpZ2h0IChjKSAyMDE5
IExpbmFybyBMdGQKPj4+ICAgKgo+Pj4gQEAgLTE1Miw2ICsxNTIsMTEgQEAKPj4+ICAjZGVmaW5l
IENTSV9DU0lDUjE4CQkweDQ4Cj4+PiAgI2RlZmluZSBDU0lfQ1NJQ1IxOQkJMHg0Ywo+Pj4KPj4+
ICtlbnVtIGNzaV9zb2NfaWQgewo+Pj4gKwlJTVg3LAo+Pj4gKwlJTVg2VUwKPj4+ICt9Owo+Pj4g
Kwo+Pj4gIHN0cnVjdCBpbXg3X2NzaSB7Cj4+PiAgCXN0cnVjdCBkZXZpY2UgKmRldjsKPj4+ICAJ
c3RydWN0IHY0bDJfc3ViZGV2IHNkOwo+Pj4gQEAgLTE5MSw2ICsxOTYsNyBAQCBzdHJ1Y3QgaW14
N19jc2kgewo+Pj4gIAlib29sIGlzX2luaXQ7Cj4+PiAgCWJvb2wgaXNfc3RyZWFtaW5nOwo+Pj4g
IAlib29sIGlzX2NzaTI7Cj4+PiArCWVudW0gY3NpX3NvY19pZCBzb2NfaWQ7Cj4+Pgo+Pj4gIAlz
dHJ1Y3QgY29tcGxldGlvbiBsYXN0X2VvZl9jb21wbGV0aW9uOwo+Pj4gIH07Cj4+PiBAQCAtNTQ4
LDYgKzU1NCwxNCBAQCBzdGF0aWMgaW50IGlteDdfY3NpX3BhZF9saW5rX3ZhbGlkYXRlKHN0cnVj
dCB2NGwyX3N1YmRldiAqc2QsCj4+PiAgCWlmIChyZXQpCj4+PiAgCQlyZXR1cm4gcmV0Owo+Pj4K
Pj4+ICsJaWYgKGNzaS0+c29jX2lkID09IElNWDZVTCkgewo+Pj4gKwkJbXV0ZXhfbG9jaygmY3Np
LT5sb2NrKTsKPj4+ICsJCWNzaS0+aXNfY3NpMiA9IGZhbHNlOwo+Pj4gKwkJbXV0ZXhfdW5sb2Nr
KCZjc2ktPmxvY2spOwo+Pj4gKwo+Pj4gKwkJcmV0dXJuIDA7Cj4+PiArCX0KPj4+ICsKPj4+ICAJ
cmV0ID0gaW14N19jc2lfZ2V0X3Vwc3RyZWFtX2VuZHBvaW50KGNzaSwgJnVwc3RyZWFtX2VwLCB0
cnVlKTsKPj4+ICAJaWYgKHJldCkgewo+Pj4gIAkJdjRsMl9lcnIoJmNzaS0+c2QsICJmYWlsZWQg
dG8gZmluZCB1cHN0cmVhbSBlbmRwb2ludFxuIik7Cj4+PiBAQCAtNzU3LDYgKzc3MSw3IEBAIHN0
YXRpYyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+Pj4gIAlz
dHJ1Y3QgdjRsMl9waXhfZm9ybWF0ICpvdXRfcGl4ID0gJnZkZXYtPmZtdC5mbXQucGl4Owo+Pj4g
IAlfX3UzMiBpbl9jb2RlID0gY3NpLT5mb3JtYXRfbWJ1c1tJTVg3X0NTSV9QQURfU0lOS10uY29k
ZTsKPj4+ICAJdTMyIGNyMSwgY3IxODsKPj4+ICsJaW50IHdpZHRoID0gb3V0X3BpeC0+d2lkdGg7
Cj4+Pgo+Pj4gIAlpZiAob3V0X3BpeC0+ZmllbGQgPT0gVjRMMl9GSUVMRF9JTlRFUkxBQ0VEKSB7
Cj4+PiAgCQlpbXg3X2NzaV9kZWludGVybGFjZV9lbmFibGUoY3NpLCB0cnVlKTsKPj4+IEBAIC03
NjYsMTUgKzc4MSwyNyBAQCBzdGF0aWMgaW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14
N19jc2kgKmNzaSkKPj4+ICAJCWlteDdfY3NpX2J1Zl9zdHJpZGVfc2V0KGNzaSwgMCk7Cj4+PiAg
CX0KPj4+Cj4+PiAtCWlteDdfY3NpX3NldF9pbWFncGFyYShjc2ksIG91dF9waXgtPndpZHRoLCBv
dXRfcGl4LT5oZWlnaHQpOwo+Pj4gKwljcjE4ID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lf
Q1NJQ1IxOCk7Cj4+PiArCj4+PiArCWlmICghY3NpLT5pc19jc2kyKSB7Cj4+PiArCQlpZiAob3V0
X3BpeC0+cGl4ZWxmb3JtYXQgPT0gVjRMMl9QSVhfRk1UX1VZVlkgfHwKPj4+ICsJCSAgICBvdXRf
cGl4LT5waXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfWVVZVikKPj4+ICsJCQl3aWR0aCAqPSAy
Owo+Pj4gKwo+Pj4gKwkJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91dF9waXgt
PmhlaWdodCk7Cj4+PiArCj4+PiArCQljcjE4IHw9IChCSVRfQkFTRUFERFJfU1dJVENIX0VOIHwg
QklUX0JBU0VBRERSX1NXSVRDSF9TRUwgfAo+Pj4gKwkJCUJJVF9CQVNFQUREUl9DSEdfRVJSX0VO
KTsKPj4+ICsJCWlteDdfY3NpX3JlZ193cml0ZShjc2ksIGNyMTgsIENTSV9DU0lDUjE4KTsKPj4+
Cj4+PiAtCWlmICghY3NpLT5pc19jc2kyKQo+Pj4gIAkJcmV0dXJuIDA7Cj4+PiArCX0KPj4+ICsK
Pj4+ICsJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91dF9waXgtPmhlaWdodCk7
Cj4+Pgo+Pj4gIAljcjEgPSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjEpOwo+Pj4g
IAljcjEgJj0gfkJJVF9HQ0xLX01PREU7Cj4+Pgo+Pj4gLQljcjE4ID0gaW14N19jc2lfcmVnX3Jl
YWQoY3NpLCBDU0lfQ1NJQ1IxOCk7Cj4+PiAgCWNyMTggJj0gQklUX01JUElfREFUQV9GT1JNQVRf
TUFTSzsKPj4+ICAJY3IxOCB8PSBCSVRfREFUQV9GUk9NX01JUEk7Cj4+Pgo+Pj4gQEAgLTgwOSwx
MSArODM2LDkgQEAgc3RhdGljIHZvaWQgaW14N19jc2lfZW5hYmxlKHN0cnVjdCBpbXg3X2NzaSAq
Y3NpKQo+Pj4gIHsKPj4+ICAJaW14N19jc2lfc3dfcmVzZXQoY3NpKTsKPj4+Cj4+PiAtCWlmIChj
c2ktPmlzX2NzaTIpIHsKPj4+IC0JCWlteDdfY3NpX2RtYXJlcV9yZmZfZW5hYmxlKGNzaSk7Cj4+
PiAtCQlpbXg3X2NzaV9od19lbmFibGVfaXJxKGNzaSk7Cj4+PiAtCQlpbXg3X2NzaV9od19lbmFi
bGUoY3NpKTsKPj4+IC0JfQo+Pj4gKwlpbXg3X2NzaV9kbWFyZXFfcmZmX2VuYWJsZShjc2kpOwo+
Pj4gKwlpbXg3X2NzaV9od19lbmFibGVfaXJxKGNzaSk7Cj4+PiArCWlteDdfY3NpX2h3X2VuYWJs
ZShjc2kpOwo+Pj4gIH0KPj4+Cj4+PiAgc3RhdGljIHZvaWQgaW14N19jc2lfZGlzYWJsZShzdHJ1
Y3QgaW14N19jc2kgKmNzaSkKPj4+IEBAIC0xMTY2LDE5ICsxMTkxLDMyIEBAIHN0YXRpYyBpbnQg
aW14N19jc2lfcGFyc2VfZW5kcG9pbnQoc3RydWN0IGRldmljZSAqZGV2LAo+Pj4gIAlyZXR1cm4g
Zndub2RlX2RldmljZV9pc19hdmFpbGFibGUoYXNkLT5tYXRjaC5md25vZGUpID8gMCA6IC1FSU5W
QUw7Cj4+PiAgfQo+Pj4KPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXg3
X2NzaV9vZl9tYXRjaFtdID0gewo+Pj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3LWNzaSIs
IC5kYXRhID0gKHZvaWQgKilJTVg3IH0sCj4+PiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDZ1
bC1jc2kiLCAuZGF0YSA9ICh2b2lkICopSU1YNlVMIH0sCj4+Cj4+IGxvb2tpbmcgYXQgdGhpcyBh
Z2FpbiBJIHRoaW5rIHdlIGNhbiBkbyB0aGlzIGlzIGEgZGlmZmVyZW50IHdheS4KPj4gSW5zdGVh
ZCBkYXRhIGJlaW5nIHRoZSBzb2NfaWQsIGp1c3Qgc2V0IGhlcmUgaWYgaXQgaXNfY3NpMiBvciBu
b3QuCj4+Cj4+IFRoaXMgd291bGQgYXZvaWQgdG8gYWRkIGEgc29jX2lkICB0byB0aGUgc3RydWN0
IHRoYXQgaXQgcmVhbGx5IGl0Cj4+IGlzIHVzZWQgb25seSB0byBzZXR1cCB0aGUgaXNfY3NpMiB2
YXIuIEkgdGhpbmsgdGhpcyB3aWxsIG1ha2UgdGhpcwo+PiBwYXRjaCBhIGxvdCBzaW1wbGVyLgo+
Cj4gV2VsbCwgSSBoYXZlIGFkZGVkIHRoaXMgc29jX2lkIGJlY2F1c2UgaW14N19jc2lfZ2V0X3Vw
c3RyZWFtX2VuZHBvaW50IGluCj4gaW14N19jc2lfcGFkX2xpbmtfdmFsaWRhdGUgZmFpbHM6Cj4K
PiBbICAzNjYuNTQ5NzY4XSBjc2k6IGZhaWxlZCB0byBmaW5kIHVwc3RyZWFtIGVuZHBvaW50Cj4g
WyAgMzY2LjU1NjI3NF0gY3NpOiBwaXBlbGluZSBzdGFydCBmYWlsZWQgd2l0aCAtMTkKPgoKSSB0
aGluayB0aGlzIGZhaWxzIGJlY2F1c2UgeW91IGRvIG5vdCBkZWZpbmUgYW55IGVuZHBvaW50IGZv
ciB0aGUKY3NpIGluIHlvdXIgYm9hcmQgZHRzIGZpbGUuIEkgc2VlIGluIHBhdGNoIDEvMyB0aGUg
c2V0dXAgb2YgY3NpLApkaXNhYmxlZCwgYnV0IG5vdCB0aGUgZW5kcG9pbnQgY29ubmVjdGluZyBj
c2kgd2l0aCB0aGUgb3Y1NjQwIGluCnlvdXIgYm9hcmQgZmlsZSAoc2VlIHRoZSBjb25uZWN0aW9u
IGJldHdlZW4gbWlwaSBpbXg3IGFuZCBvdjI2ODAKaW4gdGhlIGlteDctd2FycC5kdHMsIG9yIHRo
ZSBvdjU2NDAudHh0IGZpbGUpLgoKLS0tCkNoZWVycywKICAgICAgICBSdWkKCgo+Cj4gTXkgcGlw
ZWxpbmUgaXM6Cj4KPiBEZXZpY2UgdG9wb2xvZ3kKPiAtIGVudGl0eSAxOiBjc2kgKDIgcGFkcywg
MiBsaW5rcykKPiAgICAgICAgICAgICB0eXBlIFY0TDIgc3ViZGV2IHN1YnR5cGUgVW5rbm93biBm
bGFncyAwCj4gICAgICAgICAgICAgZGV2aWNlIG5vZGUgbmFtZSAvZGV2L3Y0bC1zdWJkZXYwCj4g
ICAgICAgICBwYWQwOiBTaW5rCj4gICAgICAgICAgICAgICAgIFtmbXQ6VVlWWThfMlg4LzY0MHg0
ODAgZmllbGQ6bm9uZSBjb2xvcnNwYWNlOnNyZ2IKPiB4ZmVyOnNyZ2IgeWNiY3I6NjAxIHF1YW50
aXphdGlvbjpmdWxsLXJhbmdlXQo+ICAgICAgICAgICAgICAgICA8LSAib3Y1NjQwIDEtMDAzYyI6
MCBbRU5BQkxFRF0KPiAgICAgICAgIHBhZDE6IFNvdXJjZQo+ICAgICAgICAgICAgICAgICBbZm10
OlVZVlk4XzJYOC82NDB4NDgwIGZpZWxkOm5vbmUgY29sb3JzcGFjZTpzcmdiCj4geGZlcjpzcmdi
IHljYmNyOjYwMSBxdWFudGl6YXRpb246ZnVsbC1yYW5nZV0KPiAgICAgICAgICAgICAgICAgLT4g
ImNzaSBjYXB0dXJlIjowIFtFTkFCTEVEXQo+Cj4gLSBlbnRpdHkgNDogY3NpIGNhcHR1cmUgKDEg
cGFkLCAxIGxpbmspCj4gICAgICAgICAgICAgdHlwZSBOb2RlIHN1YnR5cGUgVjRMIGZsYWdzIDAK
PiAgICAgICAgICAgICBkZXZpY2Ugbm9kZSBuYW1lIC9kZXYvdmlkZW8xCj4gICAgICAgICBwYWQw
OiBTaW5rCj4gICAgICAgICAgICAgICAgIDwtICJjc2kiOjEgW0VOQUJMRURdCj4KPiAtIGVudGl0
eSAxMDogb3Y1NjQwIDEtMDAzYyAoMSBwYWQsIDEgbGluaykKPiAgICAgICAgICAgICAgdHlwZSBW
NEwyIHN1YmRldiBzdWJ0eXBlIFNlbnNvciBmbGFncyAwCj4gICAgICAgICAgICAgIGRldmljZSBu
b2RlIG5hbWUgL2Rldi92NGwtc3ViZGV2MQo+ICAgICAgICAgcGFkMDogU291cmNlCj4gICAgICAg
ICAgICAgICAgIFtmbXQ6VVlWWThfMlg4LzY0MHg0ODBAMS8zMCBmaWVsZDpub25lIGNvbG9yc3Bh
Y2U6c3JnYgo+IHhmZXI6c3JnYiB5Y2Jjcjo2MDEgcXVhbnRpemF0aW9uOmZ1bGwtcmFuZ2VdCj4g
ICAgICAgICAgICAgICAgIC0+ICJjc2kiOjAgW0VOQUJMRURdCj4KPgo+IE1heWJlIHdlIHNob3Vs
ZCBmaXggdGhpcyA/Cj4KPiBSZWdhcmRzLAo+Cj4+Cj4+PiArCXsgfSwKPj4+ICt9Owo+Pj4gK01P
RFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlteDdfY3NpX29mX21hdGNoKTsKPj4+ICsKPj4+ICBzdGF0
aWMgaW50IGlteDdfY3NpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiAg
ewo+Pj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+Pj4gIAlzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7Cj4+PiAgCXN0cnVjdCBpbXhfbWVkaWFfZGV2
ICppbXhtZDsKPj4+ICAJc3RydWN0IGlteDdfY3NpICpjc2k7Cj4+PiArCWNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgKm9mX2lkOwo+Pj4gIAlpbnQgcmV0Owo+Pj4KPj4+ICsJb2ZfaWQgPSBvZl9t
YXRjaF9ub2RlKGlteDdfY3NpX29mX21hdGNoLCBub2RlKTsKPj4KPj4gV2l0aCB0aGUgYWJvdmUg
c2FpZCwgaGVyZSBJIHRoaW5rIHdlIGNhbiB1c2UgdGhlIG9mX21hdGNoX2RldmljZT8KPj4KPj4g
aG9wZSB0aGlzIG1ha2VzIHNlbnNlIGFsc28gdG8geW91Lgo+Pgo+PiBPbmNlIGFnYWluIHRoYW5r
cyBmb3IgdGhlIHBhdGNoZXMuCj4+Cj4+IC0tLQo+PiBDaGVlcnMsCj4+ICAgICAgICAgUnVpCj4+
Cj4+PiArCWlmICghb2ZfaWQpCj4+PiArCQlyZXR1cm4gLUVOT0RFVjsKPj4+ICsKPj4+ICAJY3Np
ID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqY3NpKSwgR0ZQX0tFUk5FTCk7Cj4+
PiAgCWlmICghY3NpKQo+Pj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4+Pgo+Pj4gIAljc2ktPmRldiA9
IGRldjsKPj4+ICsJY3NpLT5zb2NfaWQgPSAoZW51bSBjc2lfc29jX2lkKW9mX2lkLT5kYXRhOwo+
Pj4KPj4+ICAJY3NpLT5tY2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJtY2xrIik7Cj4+
PiAgCWlmIChJU19FUlIoY3NpLT5tY2xrKSkgewo+Pj4gQEAgLTEyOTQsMTIgKzEzMzIsNiBAQCBz
dGF0aWMgaW50IGlteDdfY3NpX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4gIAlyZXR1cm4gMDsKPj4+ICB9Cj4+Pgo+Pj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIGlteDdfY3NpX29mX21hdGNoW10gPSB7Cj4+PiAtCXsgLmNvbXBhdGlibGUgPSAiZnNs
LGlteDctY3NpIiB9LAo+Pj4gLQl7IH0sCj4+PiAtfTsKPj4+IC1NT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBpbXg3X2NzaV9vZl9tYXRjaCk7Cj4+PiAtCj4+PiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9y
bV9kcml2ZXIgaW14N19jc2lfZHJpdmVyID0gewo+Pj4gIAkucHJvYmUgPSBpbXg3X2NzaV9wcm9i
ZSwKPj4+ICAJLnJlbW92ZSA9IGlteDdfY3NpX3JlbW92ZSwKPj4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
