Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F59278756
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwfrFq6hgP3oR5/GGJR5CIXnAjFkd/HijAJiYIYOPa4=; b=Fb1FqjkvBKAj+s
	kgOmAdAFauzT1ftQMk1lNIzZWndy6pio2D+N54WAKhLZ+zV7kPDQX5TR+HkvwVMz6FvQuxIOst7/F
	4/YG0mal2z+vWWDJrrswq6Kk52FUnqndB3FakS+3FSZEdR1s/KfEWAICDsCdngL4KA/qSWsTzl1D6
	lQFWyOoVpnKGap36Q1MCZ2EDhA+oeW5Xtz5vNRIZiz0DXhosQGk0aRTmlH1+vsSF2m6JXGe5FfpNF
	CJwq0jSRHYr3JOiW7wkMG3s1wWpUNP4c5zZGGtNfRtFdmSyawjd8wIOlbdyFbc2rEmbiDMjBFgIsi
	qEr+9OwjGVygjW7QXkrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs10H-0007kO-JO; Mon, 29 Jul 2019 08:27:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs105-0007Wl-0U
 for linux-arm-kernel@bombadil.infradead.org; Mon, 29 Jul 2019 08:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wjKq502Q6gpU5SYg3+dww58wMDXhtnro3JqbcrzLP2w=; b=NdLc77KX9Ezm0wws+nPWO51ePB
 ORReBKUirpKFZFSiOYMGSRq1a+MbRInG8DqrW2QaIB4g2/+u8vzec7mmopFkhnhHQzhmSLn3Vkpcl
 wYimu5tXUf8Gyf5DcifOLKnq0zm2xgq9tgJ8pjpHDOFNqAKUh4TOJMY0pbZbrAT1NmYQsprmLJ3Cr
 lUrr0AjLPGAXoVyXF9ASNJMLjo0DpmgLUIOvAEsEb37dHBJjtAX+pdrIdaCIqHX6hF5IjFgqeuCVw
 T2CYwQ6oWcys3RT0O+Wtz7hnbJygYBY9TmfkyoSUCISyEpGSDBkvRFk0zPYQbL+a9UfevP+rco8rg
 bVz9+VUA==;
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0kQ-0007Ix-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:11:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id f4so118089104ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 01:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wjKq502Q6gpU5SYg3+dww58wMDXhtnro3JqbcrzLP2w=;
 b=1Jstc9leeeKshq3NbZz/yusLxyfkfomaJn0FAfZR6jxixg6Z6FMAZ1ta8edPsrcWIZ
 zi2W69hsHCA/+Yn+DaHVKmOdWG3PVN2sFS0VY5OcBB+ipaMGJ84QJxi48oafAfb/tKQW
 qPxeA6DbcKPOV9s+FqRrthGcV6cXQWZ4VZJORyoUHframmgQMBIWTjbT4EthCs2nYm68
 caefLzCagBVLnZxGawHve/bJo6HvSSKoXck9RAbwq9qBRhIlDZ2Pqp3d4G8xtT3jmUn+
 hooWC4C5fit0CVYdw8lu1EVJZdV93iZMXT/TEojZb+Z9MUMK3aTJpNVfKbzJ9PLyJTpy
 tIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wjKq502Q6gpU5SYg3+dww58wMDXhtnro3JqbcrzLP2w=;
 b=V+8C00a+m933U8jz1zM2VZ7XOojQxWvHjO27t53X9dcoYmyR+ybxXzng3hObxsVD6l
 onUSRtnm2zNJo+WE1S4tRyr9JC8rM3gE+RetvyxmRlshCcdjqmhWb2Tf3bvLGzD89yOB
 ySFalLgwzMhVlXuNEeXK7m+S2tTCX75s8FbIP6yZlr8SPNKe5ND5Ps4UBaFhjLxvKrAq
 jf3rP2g5l78VaynbgThycIOBKAGvuS5om0eSi0Bgho7IpNihv/uUwbfkGSOAeUgjXA/o
 ZvjKhKVPEA/pKJL9D3c6L36D06bsH68AVS6yuaLtvqq7sdQKc0elZc1RJwT8bXqH63Cs
 u6VA==
X-Gm-Message-State: APjAAAWZQmgwypHuO1DQTbueyiJSPP34AT6ndjvR084ho1kM8qbYcQV7
 LK2hL0pQBja5m6pEevnpehiXXtVl7fCcFpvX8l8=
X-Google-Smtp-Source: APXvYqwRfziyu/V/N3q5aBGPX30RA3KOMMtCOAIa53mGZVv1aRujwKB8GJ35GVqciWl6j0Q38JittJNRxsZXkx0XVQ0=
X-Received: by 2002:a5d:860e:: with SMTP id f14mr34569962iol.242.1564387857145; 
 Mon, 29 Jul 2019 01:10:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627095104.22529-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190627095104.22529-2-miquel.raynal@bootlin.com>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Mon, 29 Jul 2019 10:10:46 +0200
Message-ID: <CAH76GKO9Z3Z7YcNSHgCkvHjrKpRs22=U8GcsL2AfN8RCTXsKuw@mail.gmail.com>
Subject: Re: [PATCH v2 01/19] phy: mvebu-cp110-comphy: Add clocks support
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091110_804730_4078EA0D 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdWVsCgpjencuLCAyNyBjemUgMjAxOSBvIDExOjUxIE1pcXVlbCBSYXluYWwgPG1pcXVl
bC5yYXluYWxAYm9vdGxpbi5jb20+IG5hcGlzYcWCKGEpOgo+ICtzdGF0aWMgaW50IG12ZWJ1X2Nv
bXBoeV9pbml0X2Nsa3Moc3RydWN0IG12ZWJ1X2NvbXBoeV9wcml2ICpwcml2KQo+ICt7Cj4gKyAg
ICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgIHByaXYtPm1nX2RvbWFpbl9jbGsgPSBkZXZtX2Ns
a19nZXQocHJpdi0+ZGV2LCAibWdfY2xrIik7Cj4gKyAgICAgICBpZiAoSVNfRVJSKHByaXYtPm1n
X2RvbWFpbl9jbGspKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwcml2LT5tZ19k
b21haW5fY2xrKTsKPiArCj4gKyAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+
bWdfZG9tYWluX2Nsayk7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkKPiArICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsKPiArCj4gKyAgICAgICBwcml2LT5tZ19jb3JlX2NsayA9IGRldm1fY2xrX2dl
dChwcml2LT5kZXYsICJtZ19jb3JlX2NsayIpOwo+ICsgICAgICAgaWYgKElTX0VSUihwcml2LT5t
Z19jb3JlX2NsaykpIHsKPiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihwcml2LT5tZ19j
b3JlX2Nsayk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZGlzX21nX2RvbWFpbl9jbGs7Cj4gKyAg
ICAgICB9Cj4gKwo+ICsgICAgICAgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHByaXYtPm1nX2Nv
cmVfY2xrKTsKPiArICAgICAgIGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBnb3RvIGRp
c19tZ19kb21haW5fY2xrOwo+ICsKPiArICAgICAgIHByaXYtPmF4aV9jbGsgPSBkZXZtX2Nsa19n
ZXQocHJpdi0+ZGV2LCAiYXhpX2NsayIpOwo+ICsgICAgICAgaWYgKElTX0VSUihwcml2LT5heGlf
Y2xrKSkgewo+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKHByaXYtPmF4aV9jbGspOwo+
ICsgICAgICAgICAgICAgICBnb3RvIGRpc19tZ19jb3JlX2NsazsKPiArICAgICAgIH0KPiArCj4g
KyAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+YXhpX2Nsayk7Cj4gKyAgICAg
ICBpZiAocmV0IDwgMCkKPiArICAgICAgICAgICAgICAgZ290byBkaXNfbWdfY29yZV9jbGs7Cj4g
Kwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gKwo+ICtkaXNfbWdfY29yZV9jbGs6Cj4gKyAgICAgICBj
bGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+bWdfY29yZV9jbGspOwo+ICsKPiArZGlzX21nX2Rv
bWFpbl9jbGs6Cj4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+bWdfZG9tYWlu
X2Nsayk7Cj4gKwo+ICsgICAgICAgcHJpdi0+bWdfZG9tYWluX2NsayA9IE5VTEw7Cj4gKyAgICAg
ICBwcml2LT5tZ19jb3JlX2NsayA9IE5VTEw7Cj4gKyAgICAgICBwcml2LT5heGlfY2xrID0gTlVM
TDsKPiArCj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICt9Owo+ICsKPiArc3RhdGljIHZvaWQgbXZl
YnVfY29tcGh5X2Rpc2FibGVfdW5wcmVwYXJlX2Nsa3Moc3RydWN0IG12ZWJ1X2NvbXBoeV9wcml2
ICpwcml2KQo+ICt7Cj4gKyAgICAgICBpZiAocHJpdi0+YXhpX2NsaykKPiArICAgICAgICAgICAg
ICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPmF4aV9jbGspOwo+ICsKPiArICAgICAgIGlm
IChwcml2LT5tZ19jb3JlX2NsaykKPiArICAgICAgICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKHByaXYtPm1nX2NvcmVfY2xrKTsKPiArCj4gKyAgICAgICBpZiAocHJpdi0+bWdfZG9tYWlu
X2NsaykKPiArICAgICAgICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPm1nX2Rv
bWFpbl9jbGspOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IG12ZWJ1X2NvbXBoeV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXZlYnVfY29t
cGh5X3ByaXYgKnByaXY7Cj4gICAgICAgICBzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwcm92aWRlcjsK
PiAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqY2hpbGQ7Cj4gICAgICAgICBzdHJ1Y3QgcmVz
b3VyY2UgKnJlczsKPiArICAgICAgIGludCByZXQ7Cj4KPiAgICAgICAgIHByaXYgPSBkZXZtX2t6
YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBp
ZiAoIXByaXYpCj4gQEAgLTYwNywxMCArNjcxLDE3IEBAIHN0YXRpYyBpbnQgbXZlYnVfY29tcGh5
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAoSVNfRVJS
KHByaXYtPmJhc2UpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwcml2LT5iYXNl
KTsKPgo+ICsgICAgICAgLyoKPiArICAgICAgICAqIElnbm9yZSBlcnJvciBpZiBjbG9ja3MgaGF2
ZSBub3QgYmVlbiBpbml0aWFsaXplZCBwcm9wZXJseSBmb3IgRFQKPiArICAgICAgICAqIGNvbXBh
dGliaWxpdHkgcmVhc29ucy4KPiArICAgICAgICAqLwo+ICsgICAgICAgcmV0ID0gbXZlYnVfY29t
cGh5X2luaXRfY2xrcyhwcml2KTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAg
IGRldl93YXJuKCZwZGV2LT5kZXYsICJjYW5ub3QgaW5pdGlhbGl6ZSBjbG9ja3NcbiIpOwo+ICsK
ClBsZWFzZSByZXF1ZXN0IHByb2JlIHJldHJ5IHdoZW4gY2xvY2tzIGFyZSBub3QgcmVhZHksIGUu
Zy46Ci0gICAgICAgaWYgKHJldCkKKyAgICAgICBpZiAocmV0KSB7CisgICAgICAgICAgICAgICBp
ZiAocmV0ID09IC1FUFJPQkVfREVGRVIpCisgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7CiAgICAgICAgICAgICAgICAgZGV2X3dhcm4oJnBkZXYtPmRldiwgImNhbm5vdCBpbml0aWFs
aXplIGNsb2Nrc1xuIik7CisgICAgICAgfQoKQWZ0ZXIgdGhhdCB5b3UgY2FuIHB1dDoKVGVzdGVk
LWJ5OiBHcnplZ29yeiBKYXN6Y3p5ayA8amF6QHNlbWloYWxmLmNvbT4KCnJlZ2FyZHMsCkdyemVn
b3J6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
