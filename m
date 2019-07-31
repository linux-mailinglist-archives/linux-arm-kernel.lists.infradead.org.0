Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1197C804
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYO57W6Q8V0hk8DaXO2ZUyRaXtVnOLwbVVWku/Sq1Fw=; b=u3H82lazW2QruN
	3pXJ7f9aB8kyMkZEz4uXCK9qJjN7E+tzJipF4m1s5snmPn/PLw0Bi+VcV+XUoVvhS058RF5xRG4/S
	KkYuTksYi3aLGCMNmp/P6Y49HZJzOIkzDn+ubZEZFCQOFh2C3Ke/OgZGFHsZwo15CLpm/JWN5OsIm
	B6epOHLHE6tLxgs9rrCQNs1A1+EXpQsmL1CbfKg7CNkG42oovPouUEV18vW8+VowihR1FvCdlP/Li
	34UlZgcluSM2mVx7KXtpvwJDagS4C8WTffpIpMWSMvexabM13Su30gidPJIj7baDdpecPF7ZjC1/7
	E4TAXqlHQt/fIQZb9Z6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsr29-0002TB-5q; Wed, 31 Jul 2019 16:00:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsr1z-0002Sr-AJ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:00:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF56A206A2;
 Wed, 31 Jul 2019 16:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564588846;
 bh=8/iUzsnff7v3bdrLEupAqK60VWMHVs1+tovD+8fMDdg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oSq7AczokLq9O5HmGNMMXoBQHyFsn+uD6YtJzSsackbSJOjH4gxnRgXabQ5IUo40f
 VDSVk4VIirr7JC0jMtPN8qU6VGYI09s81wOUOQnbFA3yoNTTiKFP1DcV3OENUMrD/K
 TC6xyj22CzGCwJMpv8SwLM/4oeYAaT8kraa4+Cug=
Date: Wed, 31 Jul 2019 18:00:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: David Miller <davem@davemloft.net>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731160043.GA15520@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
 <20190731113522.GA3426@kroah.com>
 <20190731.084824.2244928058443049.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731.084824.2244928058443049.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_090047_381381_2AFB003A 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, netdev@vger.kernel.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDg6NDg6MjRBTSAtMDcwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+Cj4gRGF0ZTogV2VkLCAzMSBKdWwgMjAxOSAxMzozNToyMiArMDIwMAo+IAo+ID4gT24gV2Vk
LCBKdWwgMzEsIDIwMTkgYXQgMTI6MjQ6NDFQTSArMDEwMCwgTWFyayBCcm93biB3cm90ZToKPiA+
PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDowNzo0MUFNIC0wNzAwLCBrZXJuZWxjaS5vcmcg
Ym90IHdyb3RlOgo+ID4+IAo+ID4+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVpbGQgYW4gQVJN
IGFsbG1vZGNvbmZpZyBkdWUgdG86Cj4gPj4gCj4gPj4gPiBhbGxtb2Rjb25maWcgKGFybSwgZ2Nj
LTgpIOKAlSBGQUlMLCAxIGVycm9yLCA0MCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21hdGNoZXMK
PiA+PiA+IAo+ID4+ID4gRXJyb3JzOgo+ID4+ID4gICAgIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNh
dml1bS5oOjExMTozNjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICd3
cml0ZXEnOyBkaWQgeW91IG1lYW4gJ3dyaXRlbCc/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9u
LWRlY2xhcmF0aW9uXQo+ID4+IAo+ID4+IGFzIGEgcmVzdWx0IG9mIHRoZSBjaGFuZ2VzIHRoYXQg
aW50cm9kdWNlZDoKPiA+PiAKPiA+PiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVz
IGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ID4+ICAgRGVwZW5kcyBvbiBbbl06IE5FVERFVklD
RVMgWz15XSAmJiBNRElPX0RFVklDRSBbPW1dICYmIE1ESU9fQlVTIFs9bV0gJiYgNjRCSVQgJiYg
SEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW1dCj4gPj4gICBTZWxlY3RlZCBieSBbbV06Cj4g
Pj4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPW1dICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09D
VEVPTl9TT0MgJiYgTkVUREVWSUNFUyBbPXldIHx8IENPTVBJTEVfVEVTVCBbPXldKQo+ID4+IAo+
ID4+IHdoaWNoIGlzIHRyaWdnZXJlZCBieSB0aGUgc3RhZ2luZyBPQ1RFT05fRVRIRVJORVQgZHJp
dmVyIHdoaWNoIG1pc3NlcyBhCj4gPj4gNjRCSVQgZGVwZW5kZW5jeSBidXQgYWRkZWQgQ09NUElM
RV9URVNUIGluIDE3MWE5YmFlNjhjNzJmMgo+ID4+IChzdGFnaW5nL29jdGVvbjogQWxsb3cgdGVz
dCBidWlsZCBvbiAhTUlQUykuCj4gPiAKPiA+IEEgcGF0Y2ggd2FzIHBvc3RlZCBmb3IgdGhpcywg
YnV0IGl0IG5lZWRzIHRvIGdvIHRocm91Z2ggdGhlIG5ldGRldiB0cmVlCj4gPiBhcyB0aGF0J3Mg
d2hlcmUgdGhlIG9mZmVuZGluZyBwYXRjaGVzIGFyZSBjb21pbmcgZnJvbS4KPiAKPiBJIGRpZG4n
dCBjYXRjaCB0aGF0LCB3YXMgbmV0ZGV2IENDOidkPwoKTm9wZSwganVzdCB5b3UgOigKCkknbGwg
cmVzZW5kIGl0IG5vdyBhbmQgY2M6IG5ldGRldi4KCnRoYW5rcywKCmdyZWcgay1oCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
