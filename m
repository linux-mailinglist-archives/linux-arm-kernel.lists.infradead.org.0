Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7248D1FBC33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sJZZKrSXMQNvlh4hZx0hXpqL/gKcQg0+NLRZQO5AQ8E=; b=H/koeG3BBrlJFK+i+1V2t/rXX
	UuLYf635lPay9N1JvG9e/VOJhI425H1j5QqTF1Syuu0bzARIWcxXyO+hGufAmkmLXu4jCst7tAUOc
	su79DslNCzVToC3HqTaGVWgUHvr03FLjCP+ySuriGykgaqRkktosmsspOqLWbEsTwC/YZi532aih+
	jaCQERXI9m6c2JQKIRdboQjbCd9+REm4RiuWKovnHXRtLzQJOsvx7SV0FuRxBTJa6dygUPQeV2m9Q
	mgvu79ufFfmDag8J3t059L537aQoZtzjdkyoD5FwVrmZmjDg0zpTx6sh71YcbV5u4RZT4NXjctwy2
	9icAaSPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEtp-0003Dz-Ni; Tue, 16 Jun 2020 16:57:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEtf-0003D8-Hi
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:57:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05GGv4c5039757;
 Tue, 16 Jun 2020 11:57:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592326624;
 bh=5SNJOnx/JOfRnrAoSOCyZsNKVPe0vOboLu2yYA8Qo+g=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=p7Di1GMM11digdmvF0BR+ZWyhf2oS8veOe9hLPwIC443TStcKogKOcDElHepmLxDs
 X80+pB0bLhqVfDFcgPlnHehgK2MOwQXu+aeb9HssxCD4mSb2uyp+eVTNt0w/W6z9bX
 4bsapM7NawXR5nmJoTuYU1Xv2smugOwMEg/P49oI=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05GGv44v029523;
 Tue, 16 Jun 2020 11:57:04 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 16
 Jun 2020 11:57:03 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 16 Jun 2020 11:57:03 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05GGuwQT087296;
 Tue, 16 Jun 2020 11:56:59 -0500
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
To: Tony Lindgren <tony@atomide.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <d03dd04f-6f2c-25ba-fe1f-d5fc0dfb5c68@ti.com>
 <592501c9-2d94-b266-ae76-e383d3bffa29@ti.com>
 <20200616153042.GZ37466@atomide.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <3f2855cc-48b8-ecb8-5d92-beeabe344b26@ti.com>
Date: Tue, 16 Jun 2020 19:56:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200616153042.GZ37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_095715_693562_C3CEAA03 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNi8wNi8yMDIwIDE4OjMwLCBUb255IExpbmRncmVuIHdyb3RlOgo+ICogVG9taSBWYWxr
ZWluZW4gPHRvbWkudmFsa2VpbmVuQHRpLmNvbT4gWzIwMDYxNiAxMzowMl06Cj4+IE9uIDExLzA2
LzIwMjAgMTc6MDAsIEdyeWdvcmlpIFN0cmFzaGtvIHdyb3RlOgo+Pj4gSSB0aGluaywgc3VzcGVu
ZCBtaWdodCBiZSBmaXhlZCBpZiBhbGwgZGV2aWNlcywgd2hpY2ggYXJlIG5vdyBjaGlsZCBvZiB0
aS1zeXNjLCB3aWxsIGRvCj4+PiBwbV9ydW50aW1lX2ZvcmNlX3h4eCgpIGNhbGxzIGF0IG5vaXJx
IHN1c3BlbmQgc3RhZ2UgYnkgYWRkaW5nOgo+Pj4KPj4+ICAgwqDCoMKgwqBTRVRfTk9JUlFfU1lT
VEVNX1NMRUVQX1BNX09QUyhwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQsCj4+PiAgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbV9ydW50aW1lX2ZvcmNlX3Jlc3Vt
ZSkKPj4+Cj4+PiBBbSBJIG1pc3Npbmcgc210aD8KPj4KPj4gSXNuJ3QgdGhpcyBhbG1vc3QgZXhh
Y3RseSB0aGUgc2FtZSBteSBwYXRjaCBkb2VzPyBJIGp1c3QgdXNlZCBzdXNwZW5kX2xhdGUKPj4g
YW5kIHJlc3VtZV9lYXJseS4gSXMgbm9pcnEgcGhhc2UgYmV0dGVyIHRoYW4gbGF0ZSAmIGVhcmx5
Pwo+IAo+IFdlbGwgdXAgdG8geW91IGFzIGZhciBhcyBJJ20gY29uY2VybmVkLiBUaGUgbm9pcnEg
cGhhc2UgY29tZXMgd2l0aCBzZXJpb3VzCj4gbGltaXRhdGlvbnMsIGZvciBsZXQncyBzYXkgaTJj
IGJ1cyB1c2FnZSBpZiBuZWVkZWQuIFByb2JhYmx5IGFsc28gaGFyZGVyCj4gdG8gZGVidWcgZm9y
IHN1c3BlbmQgYW5kIHJlc3VtZS4KClVuZm9ydHVuYXRlbHksIHlvdSBjYW4ndCB1c2UgUE0gcnVu
dGltZSBmb3JjZSBBUEkgYXQgLnN1c3BlbmQoKSBzdGFnZSBhcyBwbV9ydW50aW1lX2dldCB3aWxs
IHN0aWxsIHdvcmsgYW5kCnRoZXJlIGlzIG5vIHN5bmMgYmV0d2VlbiBzdXNwZW5kIGFuZCBwbV9y
dW50aW1lLgpUaGUgUE0gcnVudGltZSBmb3JjZSBBUEkgY2FuIGJlIHVzZWQgb25seSBkdXJpbmcg
bGF0ZS9ub2lycSBhcyBhdCB0aGlzIHRpbWUgcG1fcnVudGltZSBpcyBkaXNhYmxlZC4KCi0tIApC
ZXN0IHJlZ2FyZHMsCmdyeWdvcmlpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
