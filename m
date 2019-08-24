Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C419C072
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSLP0oWDIyKQ5UeC9y4FNOP5rycMs31Mv3FeSF1xZ2M=; b=S02VrqjGRLuhBt
	iKBtgF482ld5FtuQCB/UEIP7bOXXrtCfqeULSFha4O0LmcFKZ1t7cB9BsGNojjGvxwyGUCQe1dwej
	1G2OSAszFG64Qzjl3PxHvcKa20mxeGFUUSZKAcYSLJ+qZwmZLXgbyWvq4/k3dNwRFhK7BlMdMMEGs
	CKpPFaZNHZWh57zZnuTkEe/pfT0WuuKlcLFi3y/peYa8hd3uuu9S43LRenrtbRr+JVGFOgd0by6b5
	89CCH1dB8xhbk3f4P1E+OG1HVoz6qMWbcLBQmCX5BynROCvZ8CpqNeidq3F3xX/aeMSdJV0T4z5x6
	Y9RHraLfU2AcRu0dQRXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1da2-0003tT-Rr; Sat, 24 Aug 2019 21:28:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1dZe-0003si-HS
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 21:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566682066; bh=E4T9D8ZO2hDesuoosboxZajfg8P+ympomHO6rRYJdqU=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=dJ8exNaIanIhqn1NEvThpKApSpdqHNDJMYzWOmjcR1xNcej/mIKF7ZhKPg7XHRy9I
 9P0PEUJ5sgCOnLQOalzhAwCsii7AjNBCfEyE3nuHs+TR/Q9r2ythIcjBmdwy5wcvTW
 T7T8ZT/hg975j+HUKM8ZIKZOPEkW3D+Enx29965g=
Date: Sat, 24 Aug 2019 23:27:46 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190824212746.a5pyilkrrvysjjbd@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Mark Rutland <mark.rutland@arm.com>, 
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <20190820151934.3860-1-megous@megous.com>
 <10880274.nteIY8W56H@jernej-laptop>
 <20190824133057.rhpj3xuzr3vymdiy@core.my.home>
 <1690798.2HKiRSsjat@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1690798.2HKiRSsjat@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_142751_069747_A036D011 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSmVybmVqLAoKT24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMTE6MDk6NDlQTSArMDIwMCwg
SmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gVmlzdWFsbHk/Cj4gPiAKPiA+IFRoYXQgd291bGQg
ZXhwbGFpbiB3aHkgaXQgZG9lc24ndCB3b3JrIGZvciB5b3UuIFRoZSBtYWlubGluZSBSVEMgZHJp
dmVyCj4gPiBkaXNhYmxlcyBhdXRvLXN3aXRjaCBmZWF0dXJlLCBhbmQgaWYgeW91ciBib2FyZCBk
b2Vzbid0IGhhdmUgYSBjcnlzdGFsIGZvcgo+ID4gTE9TQywgUlRDIHdpbGwgbm90IGdlbmVyYXRl
IGEgY2xvY2sgZm9yIHRoZSBSVEMuCj4gPiAKPiA+IEg2J3MgZHRzaSBkZXNjcmliZXMgYnkgZGVm
YXVsdCBhIHNpdHVhdGl1b24gd2l0aCBleHRlcm5hbCAzMmsgY3J5c3RhbAo+ID4gb3NjaWxsYXRv
ci4gU2VlIGV4dF9vc2MzMmsgbm9kZS4gVGhhdCdzIGluY29ycmVjdCBmb3IgeW91ciBib2FyZCBp
ZiBpdAo+ID4gZG9lc24ndCBoYXZlIHRoZSBjcnlzdGFsLiBZb3UgbmVlZCB0byBmaXggdGhpcyBp
biB0aGUgRFRTIGZvciB5b3VyIGJvYXJkCj4gPiBpbnN0ZWFkIG9mIHBhdGNoaW5nIHRoZSBkcml2
ZXIuCj4gCj4gSSBzZWUgdGhhdCByZXBhcmVudGluZyBpcyBzdXBwb3J0ZWQsIGJ1dCBJJ20gbm90
IHN1cmUgaG93IHRvIGZpeCB0aGF0IGluIERULiAKPiBBbnkgc3VnZ2VzdGlvbj8KCllvdSBtYXkg
dHJ5IHJlbW92aW5nIHRoZSBjbG9ja3MgcHJvcGVydHkgZnJvbSBydGMgbm9kZS4KCj4gPiAKPiA+
IFRoZSBkcml2ZXIgaGFzIHBhcmVudCBjbG9jayBzZWxlY3Rpb24gbG9naWMgaW4gY2FzZSB0aGUg
TE9TQyBjcnlzdGFsIGlzIG5vdAo+ID4gdXNlZC4KPiA+IAo+ID4gWW91ciBwYXRjaCBlbmFibGVz
IGF1dG9tYXRpYyBkZXRlY3Rpb24gb2YgTE9TQyBmYWlsdXJlIGFuZCBSVEMgY2hhbmdlcyBjbG9j
awo+ID4gdG8gTE9TQyBhdXRvbWF0aWNhbGx5LCBkZXNwaXRlIHdoYXQncyBkZXNjcmliZWQgaW4g
dGhlIERUUy4gVGhhdCBtYXkgZml4Cj4gPiB0aGUgaXNzdWUsIGJ1dCBpcyBub3QgdGhlIGNvcnJl
Y3Qgc29sdXRpb24uCj4gPiAKPiA+IFJlZ2lzdGVycyBvbiBteSBib2FyZCBsb29rIGxpa2UgdGhp
cyAoZXh0ZXJuYWwgMzJrIG9zYyBpcyB1c2VkKSBmb3IKPiA+IHJlZmVyZW5jZToKPiA+IAo+ID4g
TE9TQ19DVFJMX1JFR1s3MDAwMDAwXTogODAxMQo+ID4gCUtFWV9GSUVMRCAgICAgICAgICAgICAg
ICAgICAgICA/Pz8gICAgICAgICAgICAgICAgICAoMCkKPiA+IAlMT1NDX0FVVE9fU1dUX0JZUEFT
UyAgICAgICAgICAgRU4gICAgICAgICAgICAgICAgICAgKDEpCj4gPiAJTE9TQ19BVVRPX1NXVF9F
TiAgICAgICAgICAgICAgIERJUyAgICAgICAgICAgICAgICAgICgwKQo+ID4gCUVYVF9MT1NDX0VO
ICAgICAgICAgICAgICAgICAgICBFTiAgICAgICAgICAgICAgICAgICAoMSkKPiA+IAlFWFRfTE9T
Q19HU00gICAgICAgICAgICAgICAgICAgTE9XICAgICAgICAgICAgICAgICAgKDApCj4gPiAJQkFU
VEVSWV9ESVIgICAgICAgICAgICAgICAgICAgIERJU0NIQVJHRSAgICAgICAgICAgICgwKQo+ID4g
CUxPU0NfU1JDX1NFTCAgICAgICAgICAgICAgICAgICBFWFQzMmsgICAgICAgICAgICAgICAoMSkK
PiA+IAo+ID4gTE9TQ19BVVRPX1NXVF9TVEFfUkVHWzcwMDAwMDRdOiAxCj4gPiAJRVhUX0xPU0Nf
U1RBICAgICAgICAgICAgICAgICAgIE9LICAgICAgICAgICAgICAgICAgICgwKQo+ID4gCUxPU0Nf
QVVUT19TV1RfUEVORCAgICAgICAgICAgICBOT0VGRiAgICAgICAgICAgICAgICAoMCkKPiA+IAlM
T1NDX1NSQ19TRUxfU1RBICAgICAgICAgICAgICAgRVhUMzJLICAgICAgICAgICAgICAgKDEpCj4g
PiAKPiAKPiBJbiBteSBjYXNlIExPU0NfQ1RSTF9SRUcgaGFzIHZhbHVlIDB4NDAxMCBhbmQgTE9T
Q19BVVRPX1NXVF9TVEFfUkVHCj4gaGFzIHZhbHVlIDB4NCwgc28gdGhlcmUgaXMgaXNzdWUgd2l0
aCBleHRlcm5hbCBjcnlzdGFsIChpdCdzIG1pc3NpbmcpIGFuZCBSVEMgCj4gc3dpdGNoZWQgdG8g
aW50ZXJuYWwgb25lLgo+IAo+IEJUVywgd2hhdCdzIHdyb25nIHdpdGggYXV0b21hdGljIHN3aXRj
aGluZz8gV2h5IGlzIGl0IGRpc2FibGVkPwoKSXQgYWx3YXlzIHdhcyBkaXNhYmxlZCBvbiBtYWlu
bGluZSAoYml0IDE0IHdhcyBzZXQgdG8gMCBldmVuIGJlZm9yZSBteSBwYXRjaCkuCkg2IGp1c3Qg
cHJvYmFibHkgaGFzIGFub3RoZXIgZXh0cmEgdW5kb2N1bW1lbnRlZCBiaXQsIHRoYXQncyBuZWVk
ZWQgdG8gZGlzYWJsZXMKaXQgcHJvcGVybHkuCgpZb3UgcHJvYmFibHkgZG9uJ3Qgd2FudCBhIGds
aXRjaCB0byBzd2l0Y2ggeW91ciBSVEMgZnJvbSBoaWdoLXByZWNpc2lvbgpjbG9jayB0byBhIGxv
dyBwcmVjaXNpb24gb25lIHBvc3NpYmx5IHdpdGhvdXQgYW55IGluZGljYXRpb24gaW4gdGhlIHVz
ZXJzcGFjZQpvciBhIGtlcm5lbCBsb2cuCgpSZWdhcmRsZXNzIG9mIGFsbCB0aGlzLCBEVFMgbmVl
ZHMgdG8gaGF2ZSBhIGNvcnJlY3QgZGVzY3JpcHRpb24gb2YgdGhlIEhXLAp3aGljaCBtZWFucyBp
ZiBSVEMgbW9kdWxlIGlzIG5vdCBjb25uZWN0ZWQgdG8gdGhlIDMyLjc1N2tIeiBjcnlzdGFsL2Ns
b2NrLApjbG9ja3MgcHJvcGVydHkgc2hvdWxkIGJlIGVtcHR5LgoKcmVnYXJkcywKCW8uCgo+IEJl
c3QgcmVnYXJkcywKPiBKZXJuZWoKPiAKPiA+IHJlZ2FyZHMsCj4gPiAJby4KPiA+IAo+ID4gPiA+
IFRoZSByZWFsIGlzc3VlIHByb2JhYmx5IGlzIHRoYXQgdGhlIG1haW5saW5lIGRyaXZlciBpcyBt
aXNzaW5nIHRoaXM6Cj4gPiA+ID4gCj4gPiA+ID4gaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51
eC90cmVlL2RyaXZlcnMvcnRjL3J0Yy1zdW54aS5jP2g9aDYtNC45LWJzcCNuCj4gPiA+ID4gNjUw
Cj4gPiA+IAo+ID4gPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5IHRoYXQuIGV4dCB2cy4gaW50
IHNvdXJjZSBzZWxlY3Rpb24/Cj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gPiA+IEJlc3QgcmVnYXJk
cywKPiA+ID4gSmVybmVqCj4gPiA+IAo+ID4gPiA+IHJlZ2FyZHMsCj4gPiA+ID4gCj4gPiA+ID4g
CW8uCj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
