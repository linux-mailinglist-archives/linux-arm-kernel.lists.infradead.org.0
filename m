Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE55133559
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lhp080mySnQCFAVxdGwLzzNsFZEMa3zKMMG7XFij5pk=; b=UMosxofxq7Onhx
	yxoM8kGJjzO1Eqe+eWk7oD/1Q4rblIgGwdTcgA6NtJerG2nB2/aK3HVis9K6WdS+4CD4OqpLxLGQk
	nnvSake20oiq5Rsxb8BX9AfwhhAeT2ScJO77jPq8oiAUUoN2YiK+0W++h+DvO3SyzJ2gi+UuptDY5
	KZOBKBjF05pc41YikWomSusIHSE0AEKSULbUIqWt6aP5FQY4GXRiYpMJHZGRJBHORaBFOZqizBuSF
	nN3/vnqSk9gyMb/HU6rE6PD+ZtfAYiS/vuuwimL+U2kvhOyI57I7Qv9sTXLl4scQer+oqvs2MFvqu
	xjgsJkE27nHy6Cck2r2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowrZ-0002Lg-3T; Tue, 07 Jan 2020 21:58:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowrR-0002Ky-JZ; Tue, 07 Jan 2020 21:58:03 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0643852F;
 Tue,  7 Jan 2020 22:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1578434271;
 bh=P35fKrt/dB02G14EwAgMdPETX01nTBUtFrYN35CPF48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SpUnAHB3FZa89YS6khrpYSLHAgai/HIRd3QwKnYZmKVP3ldmbLTjPNXTJTjphs2du
 dE9aLqglcbK4VpJT76yZE3SFzoNGqgRaETFuWbz32YeQsh1PJ/xGQWFOnJXck8oVEl
 VZkJlVea8x8GwLZSP+rmiea6Pza/TxScg23u+LUU=
Date: Tue, 7 Jan 2020 23:57:39 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v12 09/11] media: staging: dt-bindings: add Rockchip MIPI
 RX D-PHY yaml bindings
Message-ID: <20200107215739.GB7869@pendragon.ideasonboard.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <2549505.MsbA2le1sL@diego>
 <657de953782be2514849bc8bd12a3fbcb6794427.camel@collabora.com>
 <2299954.gvZHxIxoM0@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2299954.gvZHxIxoM0@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_135801_939237_E4BC9442 
X-CRM114-Status: GOOD (  29.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, gregkh@linuxfoundation.org, andrey.konovalov@linaro.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 robh+dt@kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, sakari.ailus@linux.intel.com,
 joacim.zetterling@gmail.com, mchehab@kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiBUdWUsIEphbiAwNywgMjAyMCBhdCAxMDozMDoyOFBNICswMTAwLCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywgNy4gSmFudWFyIDIwMjAsIDE0OjIwOjEw
IENFVCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNpYToKPiA+IE9uIFR1ZSwgMjAyMC0wMS0wNyBhdCAx
MDoyOCArMDEwMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiA+IEFtIERpZW5zdGFnLCA3LiBK
YW51YXIgMjAyMCwgMDM6Mzc6MjEgQ0VUIHNjaHJpZWIgTGF1cmVudCBQaW5jaGFydDoKPiA+ID4g
PiBPbiBNb24sIEphbiAwNiwgMjAyMCBhdCAxMTowNjoxMlBNIC0wMzAwLCBFemVxdWllbCBHYXJj
aWEgd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIDIwMjAtMDEtMDcgYXQgMDI6MTAgKzAyMDAsIExh
dXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gPiA+IEhpIEhlbGVuLAo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBPbiBGcmksIERlYyAyNywgMjAxOSBhdCAwNTowMToxNFBNIC0wMzAwLCBIZWxlbiBLb2lr
ZSB3cm90ZToKPiA+ID4gPiA+ID4gPiBBZGQgeWFtbCBEVCBiaW5kaW5ncyBmb3IgUm9ja2NoaXAg
TUlQSSBELVBIWSBSWAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFRoaXMgd2FzIHRlc3Rl
ZCBhbmQgdmVyaWZpZWQgd2l0aDoKPiA+ID4gPiA+ID4gPiBtdiBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvcGh5LXJvY2tjaGlwLWRwaHkvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9yb2NrY2hpcC1taXBpLQo+ID4gPiA+ID4gPiA+IGRwaHkueWFtbCAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS8KPiA+ID4gPiA+ID4gPiBtYWtlIGR0X2JpbmRpbmdfY2hl
Y2sgRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cm9ja2NoaXAtbWlwaS1kcGh5LnlhbWwKPiA+ID4gPiA+ID4gPiBtYWtlIGR0YnNfY2hlY2sgRFRf
U0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2No
aXAtbWlwaS1kcGh5LnlhbWwKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4ua29pa2VAY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBDaGFuZ2Vz
IGluIHYxMjoKPiA+ID4gPiA+ID4gPiAtIFRoZSBjb21taXQgcmVwbGFjZXMgdGhlIGZvbGxvd2lu
ZyBjb21taXQgaW4gcHJldmlvdXMgc2VyaWVzIG5hbWVkCj4gPiA+ID4gPiA+ID4gbWVkaWE6IHN0
YWdpbmc6IGR0LWJpbmRpbmdzOiBEb2N1bWVudCB0aGUgUm9ja2NoaXAgTUlQSSBSWCBELVBIWSBi
aW5kaW5ncwo+ID4gPiA+ID4gPiA+IFRoaXMgbmV3IHBhdGNoIGFkZHMgeWFtbCBiaW5kaW5nIGFu
ZCB3YXMgdmVyaWZpZWQgd2l0aAo+ID4gPiA+ID4gPiA+IG1ha2UgZHRic19jaGVjayBhbmQgbWFr
ZSBkdF9iaW5kaW5nX2NoZWNrCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQ2hhbmdlcyBp
biB2MTE6IE5vbmUKPiA+ID4gPiA+ID4gPiBDaGFuZ2VzIGluIHYxMDoKPiA+ID4gPiA+ID4gPiAt
IHVuc3F1YXNoCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2OToKPiA+
ID4gPiA+ID4gPiAtIGZpeCB0aXRsZSBkaXZpc2lvbiBzdHlsZQo+ID4gPiA+ID4gPiA+IC0gc3F1
YXNoCj4gPiA+ID4gPiA+ID4gLSBtb3ZlIHRvIHN0YWdpbmcKPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiBDaGFuZ2VzIGluIHY4OiBOb25lCj4gPiA+ID4gPiA+ID4gQ2hhbmdlcyBpbiB2NzoK
PiA+ID4gPiA+ID4gPiAtIHVwZGF0ZWQgZG9jIHdpdGggbmV3IGRlc2lnbiBhbmQgdGVzdGVkIGV4
YW1wbGUKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgLi4uL2JpbmRpbmdzL3BoeS9yb2Nr
Y2hpcC1taXBpLWRwaHkueWFtbCAgICAgIHwgNzUgKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtbWlwaS1kcGh5
LnlhbWwKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL21lZGlhL3BoeS1yb2NrY2hpcC1kcGh5L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcm9ja2NoaXAtbWlwaS1kcGh5LnlhbWwKPiA+ID4gPiA+ID4gPiBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9waHktCj4gPiA+ID4gPiA+ID4gcm9ja2NoaXAtZHBoeS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLW1pcGktZHBoeS55YW1sCj4g
PiA+ID4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiA+ID4gPiBpbmRleCAwMDAw
MDAwMDAwMDAuLmFmOTdmMWIzZTAwNQo+ID4gPiA+ID4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4g
PiA+ID4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcGh5LXJvY2tjaGlwLWRwaHkvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1taXBpLWRwaHkueWFt
bAo+ID4gPiA+ID4gPiA+IEBAIC0wLDAgKzEsNzUgQEAKPiA+ID4gPiA+ID4gPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ID4gPiA+ID4gPiArJVlBTUwg
MS4yCj4gPiA+ID4gPiA+ID4gKy0tLQo+ID4gPiA+ID4gPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL3BoeS9yb2NrY2hpcC1taXBpLWRwaHkueWFtbCMKPiA+ID4gPiA+ID4g
PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwj
Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICt0aXRsZTogUm9ja2NoaXAgU29DIE1JUEkg
UlgwIEQtUEhZIERldmljZSBUcmVlIEJpbmRpbmdzCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBT
aG91bGQgdGhpcyBiZSBzL1JYMC9SWC8gPyBPciBkbyB5b3UgZXhwZWN0IGRpZmZlcmVudCBiaW5k
aW5ncyBmb3IgUlgxID8KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhlIGRyaXZlciBjdXJyZW50bHkg
b25seSBzdXBwb3J0cyBSWDAsIGJ1dCBJIHRoaW5rIHlvdSBhcmUgcmlnaHQsCj4gPiA+ID4gPiBp
dCBzaG91bGQgc2F5IFJYIGhlcmUuIFRoaXMgYmluZGluZyBjb3VsZCBiZSBleHRlbmRlZCBmb3Ig
UlgxLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IExvb2tpbmcgYXQgdGhlIFBIWSBkcml2ZXIsIGl0
IHNlZW1zIHRvIGhhbmRsZSBhbGwgUEhZcyB3aXRoIGEgc2luZ2xlCj4gPiA+ID4gPiA+IHN0cnVj
dCBkZXZpY2UuIFNob3VsZCB3ZSB0aHVzIHVzZSAjcGh5LWNlbGxzID0gPDE+IHRvIHNlbGVjdCB0
aGUgUEhZID8KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBhbSBub3QgZm9sbG93aW5nIHRoaXMuIFRo
ZSBkcml2ZXIgaGFuZGxlcyBqdXN0IG9uZSBQSFkuIEVhY2ggUEhZCj4gPiA+ID4gPiBzaG91bGQg
aGF2ZSBpdHMgb3duIG5vZGUuCj4gPiA+ID4gCj4gPiA+ID4gTG9va2luZyBhdCB0aGUgcmVnaXN0
ZXJzLCBpdCBzZWVtcyB0aGF0IHRoZSBkaWZmZXJlbnQgUEhZcyBhcmUKPiA+ID4gPiBpbnRlcnR3
aW5lZCBhbmQgd2Ugd291bGQgY291bGQgaGF2ZSB0cm91YmxlIGhhbmRsaW5nIHRoZSBkaWZmZXJl
bnQgUEhZcwo+ID4gPiA+IHdpdGggZGlmZmVyZW50IERUIG5vZGVzIGFuZCB0aHVzIHN0cnVjdCBk
ZXZpY2UgaW5zdGFuY2VzLgo+ID4gPiAKPiA+ID4gSSBoYXZlIHRvIGNvbmZlc3MgdG8gbm90IGZv
bGxvd2luZyBfQUxMXyBvZiB0aGUgdGhyZWFkcywgc28gbWF5IHNheQo+ID4gPiBzb21ldGhpbmcg
c3R1cGlkLCBidXQgSSBkb24ndCB0aGluayB0aGUgUEhZcyBhcmUgaW50ZXJ0d2luZWQgc28gbXVj
aC4KPiA+ID4gCj4gPiA+IFdoZXJlIFJYMCBpcyBjb250cm9sbGVkIGZyb20gdGhlICJHZW5lcmFs
IFJlZ2lzdGVyIEZpbGVzIiBhbG9uZQo+ID4gPiBbcmVnaXN0ZXIgZHVtcGluZyBncm91bmQgZm9y
IHNvYyBkZXNpZ25lcnNdLCB0aGUgVFgxUlgxLXBoeQo+ID4gPiBhY3R1YWxseSBnZXRzIGNvbnRy
b2xsZWQgZnJvbSBpbnNpZGUgdGhlIGRzaTEgcmVnaXN0ZXIgYXJlYSBpdCBzZWVtcy4KPiA+ID4g
Cj4gPiA+IFNvIGluIG15IHByZXZpb3VzIChzdGlsbCB1bnN1Y2Vzc2Z1bCkgdGVzdHMsIEkgd2Fz
IHJvbGxpbmcgd2l0aCBzb21ldGhpbmcgbGlrZQo+ID4gPiBodHRwczovL2dpdGh1Yi5jb20vbW1p
bmQvbGludXgtcm9ja2NoaXAvY29tbWl0L2UwZDRiMDM5NzZkMmFhYjg1YThjMTYzMGJlOTM3ZWEw
MDNiNWRmODgKPiA+ID4gCj4gPiA+IFdpdGggdGhlIGFjdHVhbCAibG9naWMiIHBpY2tlZCBmcm9t
IHRoZSB2ZW5kb3Iga2VybmVsLCB0aGF0IGp1c3QgZG91YmxlLQo+ID4gPiBtYXBzIHRoZSBkc2kx
LXJlZ2lzdGVycyBpbiBib3RoIGRzaSBhbmQgZHBoeSBkcml2ZXIsIHdoaWNoIHdhcyBzdHJhbmdl
Lgo+ID4gCj4gPiBEZXNjcmliaW5nIGVhY2ggUEhZIGluIGl0cyBvd24gZGV2aWNlIG5vZGUgKGFz
IHdlIGN1cnJlbnRseSBkbykKPiA+IHJlc3VsdHMgaW46Cj4gPiAKPiA+ICAgICAgICAgbWlwaV9k
cGh5X3R4MXJ4MTogbWlwaS1kcGh5LXR4MXJ4MUBmZjk2ODAwMCB7Cj4gPiAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktbWlwaS1kcGh5IjsKPiA+ICAgICAgICAg
ICAgICAgICByZWcgPSA8MHgwIDB4ZmY5NjgwMDAgMHgwIDB4ODAwMD47Cj4gPiAgICAgICAgICAg
ICAgICAgcm9ja2NoaXAsZ3JmID0gPCZncmY+Owo+ID4gICAgICAgICB9Owo+IAo+IDB4ZmY5Njgw
MDAgYWN0dWFsbHkgcmVhbGx5IGlzIHRoZSBkc2kxIGNvbnRyb2xsZXIsIHNvIHdlJ2xsIGFscmVh
ZHkKPiBoYXZlIGEgbm9kZSBmb3IgdGhhdCBhcmVhLiBUaGF0IGlzIHRoZSByZWFzb24gSSB3ZW50
IHRoYXQgd2F5IHRvIG1ha2UKPiB0aGUgcm9ja2NoaXAtZHNpIG9wdGlvbmFsbHkgYWxzbyBiZWhh
dmUgYXMgcGh5LXByb3ZpZGVyLgo+IAo+IFNvIHdoZW4gaXQncyB1c2VkIGluIGNvbWJpbmF0aW9u
IHdpdGggZHJtIGFuZCBhIHBhbmVsIG9yIHNvIGl0IHdpbGwKPiBiZWhhdmUgYXMgZHNpIGNvbnRy
b2xsZXIsIGJ1dCB3aGVuIHJlcXVlc3RlZCB2aWEgdGhlIHBoeS1mcmFtZXdvcmsKPiBpdCB3aWxs
IGV4cG9zZSB0aGUgZHBoeSBmdW5jdGlvbmFsaXR5LgoKRG9lc24ndCBSWDEvVFgxIGFsc28gZXhw
b3NlIGNvbnRyb2xzIHRocm91Z2ggR1JGID8gRm9yIGluc3RhbmNlCkdSRl9TT0NfQ09OOSBoYXMg
YSBkcGh5X3J4MV9jbGtfaW52X3NlbCBiaXQuCgo+ID4gICAgICAgICBncmY6IHN5c2NvbkBmZjc3
MDAwMCB7Cj4gPiAgICAgICAgICAgICAgICAgbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5
OS1taXBpLWRwaHkiOwo+ID4gICAgICAgICAgICAgICAgIH07Cj4gPiAgICAgICAgIH07Cj4gPiAK
PiA+IFdoaWNoIGlzIG1pbGRseSB1Z2x5LCBhcyBpdCB1c2VzIHR3byBtZWNoYW5pc20gdG8gZGVz
Y3JpYmUKPiA+IHRoZSBHUkYgcmVzb3VyY2UuIEluIGFkZGl0aW9uLCB0aGUgZHJpdmVyIHdpbGwg
dGhlbiBfaW5mZXJfCj4gPiB3aGljaCBkZXZpY2Ugbm9kZSBpcyBSWDAgYW5kIHdoaWNoIGlzIFRY
MVJYMSwgZnJvbSB0aGlzLgo+ID4gCj4gPiBQZXJoYXBzIExhdXJlbnQncyBwcm9wb3NhbCwgZGVz
Y3JpYmluZyBlYWNoIFBIWSBleHBsaWNpdGx5LAo+ID4gd291bGQgYmUgY2xlYW5lcj8KPiAKPiBz
byBJIHJlYWxseSB0aGluayB3ZSBzaG91bGRuJ3QgbWVyZ2UgdGhlc2UgdHdvIHRoaW5ncyB0b2dl
dGhlciwKPiBlc3BlY2lhbGx5IHRvIG5vdCBicmVhayB0aGUgZHNpMSBjb250cm9sbGVyIHBhcnQu
CgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
