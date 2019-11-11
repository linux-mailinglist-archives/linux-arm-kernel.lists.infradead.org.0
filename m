Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFD8F722F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yWwgVFTm9K8vnNecxq17I5CDngSKsm314BrShSHqvE=; b=KUzR7IOsGIk/XN
	IbUVZ7LZQhAVsc4UvMysDCmxrXv0XkZNQM0JukCjXkuQo/8FlyaQOa7j0bRTP5iCHztbneVrI9XYe
	vE9t8GrDzKyQcCNLe2X6DXfECSD93ZgWyeLDXjlVme7SWz0/Y86EWqFVNJ9km/xiCaHOoowjpmUJn
	WZqivOh4dOclgkkZVHtnQL0452EHT4wlNmC1Yf3D/2KkRt2yXnIJu3DRjAhDBWvFsJWstvgLkxW7y
	x+SNWHCxp6dQbCzPxgSLC4JA7yKLC9wPUmQAxNHsZS2sbqe1S42ZEM4VitTUaNWWVcmRjDIqjgBHt
	o3UgPmIJCePORtsSjcUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU713-0005Aw-0f; Mon, 11 Nov 2019 10:33:49 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6wy-0003CS-Gs
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:29:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABATOlD073873;
 Mon, 11 Nov 2019 04:29:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573468164;
 bh=YZpKaTqvmzh9hQ+PeGOHHrD58ep4jR3IJK9ti43dRBQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iszyDxY564+967ulaJhpJdBOFhlO3JSftHYlHmoQaetS0FcvzfAhljN2dJsRV4NaG
 T+Lt4x2b6cLn120CIEf7ZuK/ew7C5PdCMxtV7muQ3c271Ibrp1cnhPl4LSDG0zALJJ
 HyDEKq0P4whdVswhWxSmFUzpE5vDgx2XUCrk+Zh4=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xABATOKd055099
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 04:29:24 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 04:29:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 04:29:06 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABATKrB106153;
 Mon, 11 Nov 2019 04:29:21 -0600
Subject: Re: [PATCH v4 14/15] dmaengine: ti: New driver for K3 UDMA - split#6:
 Kconfig and Makefile
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-15-peter.ujfalusi@ti.com>
 <20191111061159.GR952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <20ab927d-e869-d240-8871-005181279dc6@ti.com>
Date: Mon, 11 Nov 2019 12:30:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111061159.GR952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_022936_619801_4B51B043 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDguMTEsIFZpbm9kIEtvdWwgd3JvdGU6Cj4+ICtjb25maWcgVElfSzNf
VURNQQo+PiArCXRyaXN0YXRlICJUZXhhcyBJbnN0cnVtZW50cyBVRE1BIHN1cHBvcnQiCj4+ICsJ
ZGVwZW5kcyBvbiBBUkNIX0szIHx8IENPTVBJTEVfVEVTVAo+PiArCWRlcGVuZHMgb24gVElfU0NJ
X1BST1RPQ09MCj4+ICsJZGVwZW5kcyBvbiBUSV9TQ0lfSU5UQV9JUlFDSElQCj4+ICsJc2VsZWN0
IERNQV9FTkdJTkUKPj4gKwlzZWxlY3QgRE1BX1ZJUlRVQUxfQ0hBTk5FTFMKPj4gKwlzZWxlY3Qg
VElfSzNfUklOR0FDQwo+PiArCXNlbGVjdCBUSV9LM19QU0lMCj4+ICsJZGVmYXVsdCB5Cj4gCj4g
QWdhaW4gbm8gZGVmYXVsdCB5IQoKUmVtb3ZlZAoKPiAKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVt
ZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5u
dXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
