Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9D815C955
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgYbrvoPZXhkYlyIqHkG+sHkow9zCT73pnFamEoCCp8=; b=k3YytHTxaaOKlj
	RDon2EZvGiqbALF3uYdNMu8S84SZRbvDqyGtFCS7h0zQDfOJ+tksv48cYkQ3TqQqnFZ2p2SOLGIJa
	sNoXw6/JIHXNRGicJyi02zR5syjgykq9YCRd7yBK6VS7q2WNQg2DUCBze3SFe0qVI+Yz5v/6y9e4T
	dEghK96sOIDAZRAPDhVE8Qt5V0PjihI1JuW7FKt8d3N9J23IYx3d/EV1ZBQSMIppBFJ0UvHLeiHG0
	hEQ4312rqQXK9ROJs5Gx7oT8sDwSnN+uk7kcmlqCNYFhCR0m6BRMIjmP5cJCr2uoKdkuUAkCpmdpt
	S7SmYkIKxWRWXZtagVQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2IAT-0003oC-My; Thu, 13 Feb 2020 17:20:49 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IAM-0002TX-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:20:44 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 09:18:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; d="scan'208";a="267204517"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 13 Feb 2020 09:18:35 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j2I8K-001B0E-Ab; Thu, 13 Feb 2020 19:18:36 +0200
Date: Thu, 13 Feb 2020 19:18:36 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Srivastava, Shobhit" <shobhit.srivastava@intel.com>
Subject: Re: Re: [PATCH] spi: pxa2xx: Add CS control clock quirk
Message-ID: <20200213171836.GD10400@smile.fi.intel.com>
References: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C1523@BGSMSX101.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C1523@BGSMSX101.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_092042_828703_485BFB2F 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Evan Green <evgreen@chromium.org>,
 "rajatxjain@gmail.com" <rajatxjain@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "evgreen@google.com" <evgreen@google.com>, Rajat Jain <rajatja@google.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 "Muthukrishnan, Porselvan" <porselvan.muthukrishnan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDQ6NTc6MjRQTSArMDAwMCwgU3JpdmFzdGF2YSwgU2hv
YmhpdCB3cm90ZToKPiA+IE9uIDIvMTIvMjAgMTI6MzQgQU0sIFJhamF0IEphaW4gd3JvdGU6Cgou
Li4KCj4gPiBJIHdvbmRlciBpcyBpdCBlbm91Z2ggdG8gaGF2ZSB0aGlzIHF1aWNrIHRvZ2dsaW5n
IG9ubHkgb3IgaXMgdGltZSBvciBhY3R1YWxseQo+ID4gbnVtYmVyIG9mIGNsb2NrIGN5Y2xlcyBk
ZXBlbmRlbnQ/IE5vdyB0aGVyZSBpcyBubyBkZWxheSBiZXR3ZWVuIGJ1dCBJJ20KPiA+IHRoaW5r
aW5nIGlmIGl0IG5lZWRzIGNlcnRhaW4gbnVtYmVyIGN5Y2xlcyBkb2VzIHRoaXMgc3RpbGwgd29y
ayB3aGVuIHVzaW5nIGxvdwo+ID4gc3NwX2NsayByYXRlcyBzaW1pbGFyIHRoYW4gaW4gY29tbWl0
IGQwMjgzZWIyZGJjMSAoInNwaToKPiA+IHB4YTJ4eDogQWRkIG91dHB1dCBjb250cm9sIGZvciBt
dWx0aXBsZSBJbnRlbCBMUFNTIGNoaXAgc2VsZWN0cyIpLgo+ID4gCj4gPiBJJ20gdGhpbmtpbmcg
Y2FuIHRoaXMgYmUgZG9uZSBvbmx5IG9uY2UgYWZ0ZXIgcmVzdW1lIGFuZCBtYXkgb3RoZXIgTFBT
Uwo+ID4gYmxvY2tzIG5lZWQgdGhlIHNhbWU/IEkuZS4gc2hvdWxkIHRoaXMgYmUgZG9uZSBpbiBk
cml2ZXJzL21mZC9pbnRlbC1scHNzLmM/Cgo+IFRoaXMgYmVoYXZpb3IgaXMgc2VlbiBhZnRlciBT
MGl4IHJlc3VtZSwgYnV0IGl0IGlzIG5vdCBzZWVuIGFmdGVyIFMzIHJlc3VtZS4KCkkgYWxyZWFk
eSBjb21tZW50ZWQgaW4gdGhlIG90aGVyIHRocmVhZCBhYm91dCB0aGlzLgoKSGF2ZSB5b3UgY2hl
Y2tlZCB3aGF0J3MgZ29pbmcgb24gaW4gaW50ZWxfbHBzc19zdXNwZW5kKCkgYW5kCmludGVsX2xw
c3NfcmVzdW1lKCkgZm9yIHlvdXIgY2FzZT8KCklzIGludGVsX2xwc3NfcHJlcGFyZSgpIGNhbGxl
ZCBkdXJpbmcgUzBpeCBleGl0PwoKPiBJIGFtIHRoaW5raW5nIHRoYXQgaXQgaGFwcGVucyBiZWNh
dXNlIHdlIGFyZSBub3QgZW5hYmxpbmcgdGhlIFNTUCBhZnRlciByZXN1bWUuIAo+IEl0IGlzIGRl
ZmVycmVkIHVudGlsIHdlIG5lZWQgdG8gc2VuZCBkYXRhLiBCeSBlbmFibGluZyB0aGUgU1NQIGlu
IHJlc3VtZSwgSSBkb27igJl0IHNlZSB0aGUgaXNzdWUuCj4gRm9yIFMzLCBJIHRoaW5rIEJJT1Mg
cmUtZW5hYmxlcyB0aGUgU1NQIGluIHJlc3VtZSBmbG93LgoKLS0gCldpdGggQmVzdCBSZWdhcmRz
LApBbmR5IFNoZXZjaGVua28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
