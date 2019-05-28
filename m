Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AB22C742
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU7YD8AQyqbtOQNCcxLeIyQbmG47YJhqhLxT1BTDEZw=; b=k90Q5UqLYzrYz+
	FDx5VouWPaxbKS4dNNeWpaETsgMvjkSRwoM0iRsemOJ0XVnxNqr90/sgai7NiYZt1dUZ55jqokGeG
	tCb9YthtigvVwYi4WATz/G31zvHkFnYdCfvpUZdMj5xYsXsFtQ5otk6+HkFGqvalJk10KPkqc06K5
	w080Zm7c4uMd8Lgs8f/lcEAbSaIkNQ01bXjN04qNeTxLFmpHQmmv6ykYuuOc9Y4C55OrCKPM5YT8B
	mhCRx75/vNetsHxSXm4dgqdcMvhnr9sJeDXh8KWh7qdVCAId2DBgJbK59MGTte3uUpL41kgd+rENk
	xGQB3yODXqM0p+OKolSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVblK-0001J8-5N; Tue, 28 May 2019 13:03:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVblC-0001IL-RI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:03:24 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C79C220B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 13:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559048602;
 bh=to2yA5jMaWgB/wFrj0Azo3OT7/Y8ggodEnCmIoV0dKw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=F9LGIU7halvFDEIqbcTR8bckXfWSQd+enUAhJx76nZOmjj1gyaf9cPIWD3X3DILOn
 OKCbnFCvYk5tKGfdBVwzrON5Hb+9Sd+yA+HAbYZGlONZ2g2FBQFRi6Uf72our2b0bK
 3xE0TF7WmwbRxP1b9ngeE4meBVKQM8eNGbX/wGH4=
Received: by mail-wr1-f53.google.com with SMTP id l2so20145910wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:03:21 -0700 (PDT)
X-Gm-Message-State: APjAAAXlLYCT4Io+sXiI6UauNWUF5w+66v4GeuDq4I2i8xvn3NfFRfXG
 Bx1U254LuaH1J2S7jCJdeoxfzucXYWITWUStGuQ=
X-Google-Smtp-Source: APXvYqxA+f1nD0R4RwrTP1NJJRgGbpzv3YTyXYDlyDk27gkQGMeCS38Lxu2OIj9vkhWsA4t5wB+BmsLILLrEFRfbV2k=
X-Received: by 2002:a5d:49d0:: with SMTP id t16mr16026596wrs.324.1559048600302; 
 Tue, 28 May 2019 06:03:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190520150637.23557-1-megous@megous.com>
 <20190520151003.uklhhak5clxi5zpf@core.my.home>
In-Reply-To: <20190520151003.uklhhak5clxi5zpf@core.my.home>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 May 2019 21:03:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v64NDYo-yOvUQDpqzRB_A3NUgF3dXJeYbz_57uwB7mXwqQ@mail.gmail.com>
Message-ID: <CAGb2v64NDYo-yOvUQDpqzRB_A3NUgF3dXJeYbz_57uwB7mXwqQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ARM: sun8i: a83t: Support Camera Sensor Interface
 controller
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_060322_911101_5A9D1777 
X-CRM114-Status: GOOD (  26.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTE6MTAgUE0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgTWF5IDIwLCAyMDE5IGF0IDA1OjA2OjM0UE0g
KzAyMDAsIHZlcmVqbmEgd3JvdGU6Cj4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4KPiA+Cj4gPiBUaGlzIGlzIGEgcmUtc2VuZCBvZiBDaGVuLVl1J3MgQTgzVCBDU0kg
cGF0Y2ggc2VyaWVzIHdpdGggcmV2aWV3IHRhZ3MKPiA+IGFwcGxpZWQgYW5kIHJlbW92ZWQgYWRk
cmVzcy9zaXplIGNlbGxzIGZyb20gY3NpX2luIHBvcnQuIEFscmVhZHkgYXBwbGllZAo+ID4gcGF0
Y2hlcyBmcm9tIHYxICB3ZXJlIGRyb3BwZWQuCj4gPgo+ID4gVGhlIHNlcmllcyBpcyByZWFkeSB0
byBiZSBtZXJnZWQ6Cj4gPgo+ID4gICBQYXRjaCAxIGFuZCAyIHZpYSBzdW54aSB0cmVlCj4gPiAg
IFBhdGNoIDMgdmlhIG1lZGlhIHRyZWUKPgo+IFNvcnJ5LCB3cm9uZyBudW1iZXJzLiAyIGlzIGZv
ciBtZWRpYSB0cmVlLCAzIGlzIGZvciBzdW54aSwgMSBpcyBhIGR0LWJpbmRpbmdzCj4gcGF0Y2gs
IHdoZXJlIEknbSBub3Qgc3VyZS4KCkJpbmRpbmdzIHR5cGljYWxseSBnbyB3aXRoIHRoZSBkcml2
ZXIuCgpTYWthcmksIHRoaXMgc2VyaWVzIGlzIGFuZCBoYXMgYmVlbiByZWFkeSBmb3Igc29tZSB0
aW1lIHNpbmNlIGJlZm9yZSB0aGUgbWVyZ2UKd2luZG93LiBDb3VsZCB5b3UgcGxlYXNlIG1lcmdl
IHBhdGNoZXMgMSBhbmQgMi4KCgpUaGFua3MKQ2hlbll1CgoKPgo+IHRoYW5rcywKPiAgICAgICAg
IE9uZHJlago+Cj4gPiB2MjoKPiA+IC0gZHJvcHBlZCBhZGRyZXNzL3NpemUgY2VsbHMgZnJvbSBj
c2lfaW4gcG9ydAo+ID4gLSBhZGRlZCByZXZpZXcgdGFncwo+ID4KPiA+IFBsZWFzZSB0YWtlIGEg
bG9vayBhbmQgbWVyZ2UuCj4gPgo+ID4gVGhhbmsgeW91LAo+ID4gICAgICAgT25kcmVqCj4gPgo+
ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IE9yaWdpbmFsIGRlc2NyaXB0aW9uOgo+
ID4KPiA+IEhpIGV2ZXJ5b25lLAo+ID4KPiA+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3Ig
dGhlIGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGNvbnRyb2xsZXIKPiA+IGZvdW5kIG9uIHRoZSBB
bGx3aW5uZXIgQTgzVCBTb0MuIFRoZSBjb250cm9sbGVyIGlzIHNpbWlsYXIgdG8gdGhlIG9uZQo+
ID4gZm91bmQgb24gIHRoZSBIMywgd2l0aCB0aGUgYWRkaXRpb24gb2YgYSBNSVBJIENTSS0yIGlu
dGVyZmFjZS4gSG93ZXZlciwKPiA+IHRoaXMgc2VyaWVzIG9ubHkgc3VwcG9ydHMgcGFyYWxsZWwg
YW5kIEJULjY1NiBpbnRlcmZhY2VzLCBiYXNlZCBvbiB0aGUKPiA+IGV4aXN0aW5nIGRyaXZlci4K
PiA+Cj4gPiBQYXRjaCAxIGFkZHMgYW4gdW5kb2N1bWVudGVkIGNsb2NrIHBhcmVudCBvZiB0aGUg
Q1NJIE1DTEsuIFRoaXMgd2FzCj4gPiBmb3VuZCBhZnRlciBmaW5kaW5nIHRoZSBkZWZhdWx0IHZh
bHVlIHRvIHNvbWV0aW1lcyB3b3JrIGFuZCBzb21ldGltZXMKPiA+IG5vdCwgYW5kIHRoZW4gY29t
cGFyaW5nIGFnYWluc3QgQlNQIGNvZGUuCj4gPgo+ID4gUGF0Y2ggMiBhZGRzIGEgY29tcGF0aWJs
ZSBzdHJpbmcgZm9yIHRoZSBBODNUIHZhcmlhbnQuCj4gPgo+ID4gUGF0Y2ggMyBhZGRzIHN1cHBv
cnQgZm9yIHRoZSBBODNUIHZhcmlhbnQgdG8gdGhlIGV4aXN0aW5nIHN1bjZpLWNzaQo+ID4gZHJp
dmVyLgo+ID4KPiA+IFBhdGNoIDQgYWRkcyBhIGRldmljZSBub2RlIGZvciB0aGUgY29udHJvbGxl
ciwgYXMgd2VsbCBhcyBjb21tb25seQo+ID4gdXNlZCBwaW4gbXV4aW5nIG9wdGlvbnMuCj4gPgo+
ID4gUGF0Y2ggNSBhZGRzIGEgcGluIG11eGluZyBvcHRpb24gZm9yIEkyQzEgb24gdGhlIFBFIHBp
bnMsIHVzZWQgaW4KPiA+IGNvbmp1bmN0aW9uIHdpdGggdGhlIENTSSBwaW5zLgo+ID4KPiA+IFBh
dGNoIDYgcHJvdmlkZXMgYW4gZXhhbXBsZSB1c2FnZSBvZiB0aGUgQ1NJIGNvbnRyb2xsZXI6IHRo
ZSBCYW5hbmFwaSBNMwo+ID4gd2l0aCBpdHMgY2FtZXJhIG1vZHVsZSBhdHRhY2hlZC4KPiA+Cj4g
PiBQbGVhc2UgaGF2ZSBhIGxvb2suCj4gPgo+ID4gUmVnYXJkcwo+ID4gQ2hlbll1Cj4gPgo+ID4g
Q2hlbi1ZdSBUc2FpICgzKToKPiA+ICAgZHQtYmluZGluZ3M6IG1lZGlhOiBzdW42aS1jc2k6IEFk
ZCBjb21wYXRpYmxlIHN0cmluZyBmb3IgQTgzVCB2YXJpYW50Cj4gPiAgIG1lZGlhOiBzdW42aTog
U3VwcG9ydCBBODNUIHZhcmlhbnQKPiA+ICAgQVJNOiBkdHM6IHN1bjhpOiBhODN0OiBBZGQgZGV2
aWNlIG5vZGUgZm9yIENTSSAoQ2FtZXJhIFNlbnNvcgo+ID4gICAgIEludGVyZmFjZSkKPiA+Cj4g
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VuNmktY3NpLnR4dCAgIHwgIDEgKwo+
ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAgICAgICAgICAgICB8IDI5ICsr
KysrKysrKysrKysrKysrKysKPiA+ICAuLi4vcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZp
X2NzaS5jICAgICAgfCAgMSArCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCsp
Cj4gPgo+ID4gLS0KPiA+IDIuMjEuMAo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
