Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F561CD910
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irPM8K4lPWGHDTmf5BzzTfabt5YhC08w3D+D7OBUieU=; b=gok3r7kjhYF5es
	v2v721ewCHq25pcxpLiaWVrLBq1gACvWzBhguJhrv3R2kOZwEmWRaXHbbRgghc0TE52A0AFgBH3lC
	7GjP+K90Ldo02GEEottYh3jJs+so0ptPckNzQznklFNzHvzL/P/70hmK2CzC10sT5aL0tRf51t6Rx
	12KbsodGNICeKG2SBQIwg9cadGaEvOxpP/T+tFEt4TcVvHubGXhx0POuDOzV+6Hy2H3fnj7uZQdwp
	ClDh4WoYf09WmNe+5rPJOvt+0wJnjclofrNxygyG5oDQDx1SQFxRdXWMKWdFt1LZPapK+fAWHAf3i
	AF8gc+Moo4ZwUdrCH9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY72W-00063d-MU; Mon, 11 May 2020 11:56:08 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY72N-00062j-Bz
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:56:00 +0000
Received: by mail-oi1-f194.google.com with SMTP id o7so14832322oif.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TAUhuuX1kMVrb7rdeT0m6iZG1AO2eOiW1S5bAIpTs0Q=;
 b=fbypQ8kAAwDsJ6xHzP8Ry2HLjdlWNvr1XTfI45J0AKIPigL05F1GxmcuMF6cKV5idI
 VMZ2YJRbU3SKvoD88BQdfexERlh6EzwislbJSsrw21C1QIkqAzM5TvQn8viaNi4WQuYV
 0G2/c+/grawK6E5WaSfQ/b2/wRYNfZ/ao6SSl2W3jiPoXott28V2uk+pHkVE5di5jslk
 oOmdz3KusITlXoJJhvqVz6cLv3CNmy064IoKUF/nvigXwDKJn89hUC3TtzGnfLoS0C3s
 bUZIUSTNjpox1G0oi/0vR5nWB5/7wqJB5UNvtCXy16wvCaKbIamxKEHwCMos1ZeYzG1b
 16/g==
X-Gm-Message-State: AGi0Pub9Ny6Hi/kVrqdi9Q7tyY/aH9MY6zxmjkEb+3CLpMaxDTZyeMCK
 Fy41KnpEXfmcxE7btNWXVxPeEjROTyD22WEwkBw=
X-Google-Smtp-Source: APiQypKOd8bZGDBI1ZQgvyEvgHSBubS1W5azF989KZ2zDHB3SY7QFg5VTKzm4vesSlfv+3bfpytS2jjR75nDc3qCMp4=
X-Received: by 2002:aca:895:: with SMTP id 143mr18608955oii.153.1589198158548; 
 Mon, 11 May 2020 04:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 13:55:47 +0200
Message-ID: <CAMuHMdXuMMRwbU=NrmGqXJ7DYzXpS1v+yM1ngPSZJdRZForPHw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Convert adi,adv7511.txt DT bindings to yaml
To: =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045559_404186_9C2627C0 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIE1vbiwgTWF5IDExLCAyMDIwIGF0IDE6MDYgUE0gUmljYXJkbyBDYcOx
dWVsbwo8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IFRoaXMgc2VyaWVz
IGNvbnZlcnQgdGhlIGFkaSxhZHY3NTExLnR4dCBEVCBiaW5kaW5ncyB0byBqc29uLXNjaGVtYS4g
QXMgYQo+IHJlc3VsdCBvZiB0aGUgY29udmVyc2lvbiBzb21lIGR0cyBmaWxlcyBuZWVkZWQgdG8g
YmUgdXBkYXRlZC4KPgo+IFRoZSBjaGFuZ2VzIHRvIHRoZSBkdHMgZmlsZXMgYXJlIG9mIHRocmVl
IHR5cGVzOgo+Cj4gICAtIFJlb3JkZXJpbmcgb2YgdGhlIEkyQyBzbGF2ZSBhZGRyZXNzZXMgbGlz
dCBvZiB0aGUgQURWNzV4eCBub2RlLiBUaGUKPiAgICAgYWRkcmVzc2VzIGluIHRoZSAncmVnJyBw
cm9wZXJ0eSBhbmQgdGhlIG1hdGNoaW5nIG5hbWVzIGluCj4gICAgICdyZWctbmFtZXMnIGZvciBh
biBJMkMgc2xhdmUgZG9uJ3QgbmVlZCB0byBiZSBpbiBhbnkgcGFydGljdWxhcgo+ICAgICBvcmRl
ciwgYnV0IHRoZSBEVCBzY2hlbWEgZGVmaW5lcyB0aGVzZSBwcm9wZXJ0aWVzIGFzIGEgY2VsbCBh
cnJheQo+ICAgICBhbmQgYSBzdHJpbmcgYXJyYXkgcmVzcGVjdGl2ZWx5LCB3aGljaCBhcmUgb3Jk
ZXJlZCwgc28gdGhlCj4gICAgIGRlZmluaXRpb25zIGluIHRoZSBkdHMgZmlsZXMgbXVzdCBtYXRj
aCB0aGUgb3JkZXIgaW4gdGhlIGJpbmRpbmcuCj4KPiAgIC0gRmlsbGluZyB0aGUgbWluaW11bSBi
aW5kaW5nIHJlcXVpcmVtZW50cy4gTW9zdCBvZiB0aGUgdGltZSB0aGlzCj4gICAgIG1lYW5zIGNy
ZWF0aW5nIGEgJ3BvcnRzJyBub2RlIGluIHRoZSBib2FyZHMgdGhhdCBkb24ndCBkZWZpbmUKPiAg
ICAgdGhlbS4gTm90ZSwgaG93ZXZlciwgdGhhdCB0aGUgcHVycG9zZSBvZiB0aGlzIGlzIHNpbXBs
eSB0byBtYWtlIHRoZQo+ICAgICBkZWZpbml0aW9uIGNvbXBsaWFudCB3aXRoIHRoZSBiaW5kaW5n
LiBJIGRpZG4ndCBkZWZpbmUgYW55IGVuZHBvaW50cwo+ICAgICBmb3IgdGhlIHBvcnRzLgo+Cj4g
ICAtIFJlbW92aW5nIHVubmVlZGVkIHByb3BlcnRpZXMuCj4KPiBBYm91dCB0aGUgYmluZGluZyBj
b252ZXJzaW9uOgo+Cj4gICAtIFRoZSBvcmlnaW5hbCBiaW5kaW5nIGNvdmVyZWQgZml2ZSBkaWZm
ZXJlbnQgZGV2aWNlczogQURWNzUxMSwKPiAgICAgQURWNzUxMVcsIEFEVjc1MTMsIEFEVjc1MzMg
YW5kIEFEVjc1MzUuIFRoZXkgYWxsIHNoYXJlIGEgY29tbW9uIHNldAo+ICAgICBvZiBwcm9wZXJ0
aWVzIGJ1dCBBRFY3NTMzIGFuZCBBRFY3NTM1IGhhdmUgZW5vdWdoIGRpZmZlcmVuY2VzIGZyb20K
PiAgICAgdGhlIHJlc3QgdG8gd2FycmFudCB0aGVpciBvd24gYmluZGluZyBmaWxlLiBJbiB2MSBJ
IG1vZGVsbGVkIGFsbCB0aGUKPiAgICAgcHJvcGVydGllcyBjb25zdHJhaW50cyBmb3IgYWxsIGZp
dmUgZGV2aWNlcyBpbiBhIHNpbmdsZSBmaWxlIGJ1dCBpdAo+ICAgICB0dXJuZWQgb3V0IGEgYml0
IHRvbyBjb21wbGV4LiBTcGxpdHRpbmcgdGhlIGJpbmRpbmcgaW50byBvbmUgZm9yCj4gICAgIEFE
Vjc1MTEvMTFXLzEzIGFuZCBhbm90aGVyIGZvciBBRFY3NTMzLzM1IG1ha2VzIHRoZW0gbXVjaCBl
YXNpZXIgdG8KPiAgICAgcmVhZCBhbmQgbWFpbnRhaW4uCgpUaGFua3MgZm9yIHlvdXIgc2VyaWVz
IQoKPiBQYXRjaGVzIDEvNiB0byA1LzYgY29udGFpbiB0aGUgZHRzIGNoYW5nZXMuIFBhdGNoIDYv
NiBjb250YWlucyB0aGUKPiBiaW5kaW5nIGNvbnZlcnNpb24uCgpJZiB0aGUgYmluZGluZyBjb252
ZXJzaW9uIGlzIGFjY2VwdGVkLCBJIGNhbiBxdWV1ZSB0aGUgYmVsb3cgaW4KcmVuZXNhcy1maXgt
Zm9yLXY1LjcsIHRvIGF2b2lkIHRoZSBjb252ZXJzaW9uIGludHJvZHVjaW5nIGEgcmVncmVzc2lv
bi4KCj4gICBhcm02NDogZHRzOiByZW5lc2FzOiBtYWtlIGhkbWkgZW5jb2RlciBub2RlcyBjb21w
bGlhbnQgd2l0aCBEVAo+ICAgICBiaW5kaW5ncwo+ICAgQVJNOiBkdHM6IHJlbmVzYXM6IG1ha2Ug
aGRtaSBlbmNvZGVyIG5vZGVzIGNvbXBsaWFudCB3aXRoIERUIGJpbmRpbmdzCj4gICBBUk06IGR0
czogaXdnMjBkLXE3LWRiY20tY2E6IHJlbW92ZSB1bm5lZWRlZCBwcm9wZXJ0aWVzIGluIGhkbWlA
MzkKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0t
IApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMy
IC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGgg
dGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2
YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
