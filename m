Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA891B06BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOIlCbhjJk1PIx5qm3zrHeo2+NNhWWhGcdqysw+JvuU=; b=lhXXj5w1VD0scI
	DKZL/fYvsjHpebx85XdtGxilR8hbCIUr+nvO6JgelXDC/rv0GcF2Kp7ZGqgzPRE4MEwPkpVQXQ7wb
	ezB5ombAKpCPyaUBE5or8hHhjpgVK5UZdWJKgVzaVus7xPAmKsOBIFvEpDfEoQXlu+CDvVj9G5YXv
	N4ewXMvBqkPingqkoyxuVExceB1ec9OlsHEJtnYNy8vpnHjxbVWwewZXvQa5QUPNhqKHIriU91qKD
	Q/Tmv79zL3CwZ037U6ss+v9yGGeaBJYkkCkWU4UsUVMvk4vFqCjfO/XEbG9kN6+WPenr0BlyodATz
	UNl4J56wH9mZX/SJhW8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTq1-0007Dq-Kq; Mon, 20 Apr 2020 10:39:41 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTpp-0007CN-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1587379168; bh=3JRQF0O3I0HdGeUd7K/NKhUR4du8lhknE+/rA7T8Zt8=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=lo/nsXDihOXxSgFONiiZSxKacqThKmQwRJzPH0c9i82cpOUg6AA8DobDnPl907DXK
 yag95t79gqoJpHulcgLzU5mBN6LR7Acrlg3e5O7p9y+bYhah0hO+0DEIxnHVRIgI/F
 83UqnrTkPe1NSo+6/f22xh4cx95o+JhPzwC2S29E=
Date: Mon, 20 Apr 2020 12:39:27 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200420103927.uvzotrolz2inz6q2@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Maxime Ripard <maxime@cerno.tech>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
 <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_033930_147629_11DE5562 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMTA6NDU6NDdBTSArMDIwMCwgTWF4
aW1lIFJpcGFyZCB3cm90ZToKPiBIaSwKPiAKPiBPbiBTdW4sIEFwciAxOSwgMjAyMCBhdCAwMzo1
MDowNFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBOb3cgdGhhdCByZXF1aXJl
ZCBkcml2ZXJzIGFyZSBtZXJnZWQgd2UgY2FuIGNvbnRpYnV0ZSBvbiBEVkZTCj4gPiBzdXBwb3J0
IGZvciBBbGx3aW5uZXIgSDYuCj4gPiAKPiA+IFRoaXMgc2VyaWUgaXMgYmFzZWQgb24gWWFuZ3Rh
byBMaSBzZXJpZVswXSBhbmQgT25kxZllaiBKaXJtYW4gd29ya1sxXS4KPiA+IAo+ID4gTW9zdCBv
ZiB0aGUgT1BQIHRhYmxlcyBhcmUgdGFrZW4gZnJvbSBvcmlnaW5hbCB2ZW5kb3Iga2VybmVsWzJd
Lgo+ID4gUGx1cyB0aGVyZSBhcmUgbmV3IENQVSBmcmVxdWVuY2llcyBhdCAxLjZHSHosIDEuN0dI
eiBhbmQgMS44R0h6Lgo+ID4gCj4gPiBJIHdyb3RlIGEgc2ltcGxlIHNjcmlwdCB0byByYW5kb21s
eSBzZXQgYSBmcmVxdWVuY3kgZHVyaW5nCj4gPiBhIHJhbmRvbSB0aW1lWzNdLiBUaGlzIHNjcmlw
dCBpcyBxdWl0ZSBzdHJlc3NmdWxsIGFuZCBzZXQgc29tZSBoaWdoCj4gPiBmcmVxdWVuY3kgd2l0
aG91dCBjaGVja2luZyB0ZW1wZXJhdHVyZS4gVGhpcyBjYW4gcmVzdWx0IG9uIGJlaGF2aW9yCj4g
PiB0aGF0IHdob3VsZCBub3Qgb2NjdXJzIHdpdGggdGhlIHJlYWwgY3B1ZnJlcSBmcmFtZXdvcmsu
Cj4gPiBBcyBNYXhpbWUgcG9pbnQgb3V0IEkgYWxzbyB0ZXN0ZWQgd2l0aCBjcHVmcmVxLWxqdC1z
dHJlc3MtdGVzdAo+ID4gKGZvdW5kIGhlcmUgaHR0cHM6Ly9naXRodWIuY29tL3NzdmIvY3B1YnVy
bi1hcm0pLgo+ID4gVGhpcyBzY3JpcHQgZG9lc24ndCB0cmlnZ2VyIGFueSBpc3N1ZS4KPiA+IEkg
YWxzbyB0ZXN0IHRoYXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBhbmQgZG9pbmcgRFZGUyBvbiBvdGhl
ciBDUFVzCj4gPiB3b3Jrcy4gQXMgQ1BVIHJlZ3VsYXRvciBpcyBvbmx5IHNldCBmb3IgQ1BVMC4K
PiA+IAo+ID4gVGhlIEdQVSBkZXZmcmVxIHdhcyBkcm9wIGFzIHRoZSByZWd1bGF0b3IgaXMgc3Rp
bGwgbm90IHByb3Blcmx5Cj4gPiBkcml2ZSBieSBwYW5mcm9zdCBkcml2ZXJbNF0uCj4gPiBJIHdp
bGwgcmUtaW50cm9kdWNlIGl0IGxhdGVyLgo+ID4gCj4gPiBPbmTFmWVqIEppcm1hbiBoYXMgYW4g
T3JhbmdlIFBpIDMsIEplcm5laiBoYXMgYSBQaW5lSDY0IGFuZCBhIFRhbml4Cj4gPiBUWDYgYm9h
cmRzIGFuZCBJIGhhdmUgYSBCZWVsaW5rIEdTMSBib2FyZCBzbyBJIGhhdmUgZW5hYmxlIHRoZXNl
Cj4gPiBib2FyZHMuIEJ1dCBDUFUgRGV2ZnJlcSBpcyByZWFsbHkgdG91Y2h5IGhhcyBpdCBkZXBl
bmRzIG9uOgo+ID4gYm9hcmQgZGVzaWduLCBTb0Mgc3BlZWRfZ3JhZGUgYW5kIGVudmlyb25lbWVu
dCB3aGljaCBjYW4gYWZmZWN0Cj4gPiB0aGVybWFsIGNvb2xpbmcgYW5kIGhhdmUgZGlmZmVyZW50
IGJlaGF2aW9yIGZvciBkaWZmZXJlbnQgdXNlci4KPiA+IAo+ID4gSWYgcGVvcGxlIGNhbiB0ZXN0
IHRoaXMgc2VyaWUgYW5kIGdpdmUgZmVlZGJhY2ssIEkgd2lsbCB0cnkgdG8KPiA+IGludHJvZHVj
ZSB0aGlzIGluIExpYnJlRWxlYyB0cmVlLCBzbyBMRSBjb21tdW5pdHkgY2FuIHRlc3QgaXQuCj4g
Cj4gQXBwbGllZCBhbGwgb2YgdGhlbSwgdGhhbmtzIQoKUGxlYXNlIGFsc28gYXBwbHkgIltQQVRD
SCB2MiAxLzddIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZApjbG9jayB0byBDUFUgY29y
ZXMiIGZyb20gdGhlIHYyIHNlcmllcywgb3RoZXJ3aXNlIGNwdWZyZXEgd2lsbApub3Qgd29yay4K
CkkgY2FuIGFsc28gc2VuZCBhIG1pc3NpbmcgcGF0Y2ggYWRkaW5nIHRoZSB0cmlwIHBvaW50cywg
YW5kIGNwdQphcyBhIGNvb2xpbmcgZGV2aWNlLCB0aGF0IEkgbGlua2VkIGluIG15IG90aGVyIHJl
cGx5IHRvIHRoaXMgcGF0Y2gKc2VyaWVzIGFmdGVyd2FyZHMsIGlmIENsw6ltZW50IHdhbnRzLgoK
cmVnYXJkcywKCW8uCgo+IE1heGltZQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
