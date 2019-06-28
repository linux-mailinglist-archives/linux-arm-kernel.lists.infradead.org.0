Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E9859836
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrMkqva6lW87JgtlESQnSeiE5TC2cspnWCyUOTy1sOY=; b=g5LPWDcbjSLkCI
	JsYt7HajsCgCF4TfmDL2wdM5HI518Rca0DthCaxLDevXIeHW5AdPPGmBK/2h0iHhJQBlnq1QErmn8
	8TD1GPdp4PeAqiecy5i2ZufqdwMEGV+gabo+tDNLDJAaQpI3Fgh3Z0skjAdf6dvXFnSH0o2mMUqxG
	/mBzfNwt/xKKO5VT/npjiohUotsgFQAb3ZaQIkvOYsuBhaRHlFE2XMuax7b0Urk2rygLWzIIwxZv8
	+p8yxO4WxQ7x8cnCw6Vk3YDCZS9ZGy6Ok+Fn/32QKyLIxkeSNxAgL0+mmHVLinBs6X3weV4RNT+6s
	z51tCc3QCiNO3UZQZLJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnqG-00040p-8n; Fri, 28 Jun 2019 10:10:52 +0000
Received: from mx07-00252a01.pphosted.com ([62.209.51.214])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnpy-0003pX-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:10:36 +0000
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
 by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5SAA3HM001409
 for <linux-arm-kernel@lists.infradead.org>; Fri, 28 Jun 2019 11:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type : content-transfer-encoding; s=pp;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=IQo53t+yjWUCv3doZWHJZCeK3izg0lwHGOlK8P33mQRL8s+q/ny/2UEh1D9woQw6Yvr5
 tt1SEfnhypFuAtrsMZ6lzb4xLHqHLJxl6kPh0PhHmJoRJ1MICezIQl6p7x4jSD8FIEH0
 KLYX+emoKcpJJB0uIVKzfUybu95zhnyWEuV2hpKjOkp5CTOnlv1Hyr/zaGuOzIwGjDsJ
 pW24zLIxamcqCgbQy92oE9AmQXIuv+bHxqc8VAHUfQHH6ysi61/fSvBpY48p7Oy0JdEK
 4SV7K+W/tJZDuwStTr+0Lc15t8NxPeohbW01fthgDwU0aUuM6zL1IfNEyPj+sOOH+t3R rw== 
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 by mx07-00252a01.pphosted.com with ESMTP id 2t9ehuu2kp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 28 Jun 2019 11:10:29 +0100
Received: by mail-pl1-f200.google.com with SMTP id 91so3266033pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=HudN4HAHZcs4n+TjXAVpvaFmaWUaeWvgdeEaD5uPP2pctk8+jyvr9RzUT29zh1gaXe
 UOF4fmSp795KpnHjMUQnzhG0Re2Ji1DcaVfWw2kYfnoEROQ0vzXytKKmaJOkGv8//6sX
 1MAyofMKiUctDEYamTmlO9kVUEkRf6BuB42bKrHxRm3m3GgN72NOusNMroRISHbl0ESQ
 UTa58slZscEURFsRjzYrzLtbr9CT6204iqCYyMuDGuFUtjSBMKKmpqn38ptKhm9r0nhw
 5p6j99Ta4NSMegugPG7vDfZQW4ZEfPkjioSg/l075jTUAuw8d242bXWK19HhlOwWeSmC
 MQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TDIgDFZYckSDRxESTmMyi7W5fZyMRfxZe7Gx+vhjabg=;
 b=cQ+7t5BnQ+FCrk7n6z17rRwcqdW1kuwzY50f+TCWdwDCsmpuV9EAW1tOPMmMlUsjL5
 iVlfVlSq2a76ZAwmN/wAEXt6OlnOo16VdjObuSvx1D4LmYB4c1qK0DKuW7MCrKnIbEbI
 u5I2HxIHESFK/zrHbK+8Neow3304cyqRvnK8P5MSvgr8zV31SlRmfzTNvp2vhYMDk9KC
 NffzVj1iR87oL+zhlnjvJ9mkYfOfnSLLZUUTpojDNiV4SKxSL++mMjazvtiz34O/O7R1
 b2CYS+t0p0oEw9+c9C8H+w8MPacKAS1NeTO9aojcvS3tjxMydQ9rm/cPBcCDelgaRRn6
 s/LA==
X-Gm-Message-State: APjAAAW3xWSxQDNoBJy4CAg3ZHmcSsuyVD3c1yYKepDdfUJ3ZG2MB0uX
 yWv46pVoRH66WuFIuh3TGnKY8T++GeJIjnXblcR/AMfJ1ODVR+7fy3XOfkKGkBLVn3GNl69n3Av
 yja3yj6IJ+z/kKdhXIsoCHhkRENCJlgewxuO5mCxPAKrzoXBZUw==
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr12393439pja.104.1561716627074; 
 Fri, 28 Jun 2019 03:10:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEreDZiFkAwV+0cUZgFrczBqG3Z5CPzr28vUCwFKMAVXeCeEB1P8eVW2rvYmKKjCeaDkR2QMfiT3p9cEbAMu8=
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr12393404pja.104.1561716626804; 
 Fri, 28 Jun 2019 03:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
 <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
In-Reply-To: <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 11:10:13 +0100
Message-ID: <CAAoAYcOvnF55U0kPMFE4cOd=nUqjoidirbGP6AWN=5Rqp0RhbQ@mail.gmail.com>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-28_04:2019-06-25,2019-06-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_031034_848158_1FB5CBAA 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LMML <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmljb2xhcwoKT24gVGh1LCAyNyBKdW4gMjAxOSBhdCAyMDo1NSwgTmljb2xhcyBEdWZyZXNu
ZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Cj4gSGkgRGF2ZSwKPgo+IExlIGpldWRp
IDI3IGp1aW4gMjAxOSDDoCAyMDo1NSArMDIwMCwgU3RlZmFuIFdhaHJlbiBhIMOpY3JpdCA6Cj4g
PiBGcm9tOiBEYXZlIFN0ZXZlbnNvbiA8ZGF2ZS5zdGV2ZW5zb25AcmFzcGJlcnJ5cGkub3JnPgo+
ID4KPiA+IEgyNjQgaGVhZGVyIGNvbWUgZnJvbSBWQyB3aXRoIDAgdGltZXN0YW1wcywgd2hpY2gg
bWVhbnMgdGhleSBnZXQgYQo+ID4gc3RyYW5nZSB0aW1lc3RhbXAgd2hlbiBwcm9jZXNzZWQgd2l0
aCBWQy9rZXJuZWwgc3RhcnQgdGltZXMsCj4gPiBwYXJ0aWN1bGFybHkgaWYgdXNlZCB3aXRoIHRo
ZSBpbmxpbmUgaGVhZGVyIG9wdGlvbi4KPiA+IFJlbWVtYmVyIHRoZSBsYXN0IGZyYW1lIHRpbWVz
dGFtcCBhbmQgdXNlIHRoYXQgaWYgc2V0LCBvciBvdGhlcndpc2UKPiA+IHVzZSB0aGUga2VybmVs
IHN0YXJ0IHRpbWUuCj4KPiBOb3JtYWxseSBIMjY0IGhlYWRlcnMgYXJlIGNvbnNpZGVyZWQgdG8g
YmUgcGFydCBvZiB0aGUgZm9sbG93aW5nIGZyYW1lLgo+IEdpdmluZyBpdCB0aGUgdGltZXN0YW1w
IG9mIHRoZSBwcmV2aW91cyBmcmFtZSB3aWxsIGxpa2VseSBjb25mdXNlIHNvbWUKPiB1c2Vyc3Bh
Y2UgYW5kIGNhdXNlIGFuIG9mZi1ieS1vbmUgaW4gdGltZXN0YW1wLiBJIHVuZGVyc3RhbmQgdGhp
cyBpcyBhCj4gd29ya2Fyb3VuZCwgYnV0IGFtIHdvbmRlcmluZyBpZiB0aGlzIGNhbiBiZSBpbXBy
b3ZlZC4KClNvcnJ5LCBzbGlnaHQgYW1iaWd1aXR5IGluIGhvdyBJJ20gcmVhZGluZyB5b3VyIGNv
bW1lbnQuCgpBcmUgeW91IHNheWluZyB0aGF0IHRoZSBoZWFkZXIgYnl0ZXMgd2FudCB0byBiZSBp
biB0aGUgc2FtZSBidWZmZXIgYXMKdGhlIGZvbGxvd2luZyBmcmFtZT8KSSB0aG91Z2h0IHRoaXMg
aGFkIGFsc28gYmVlbiBkaXNjdXNzZWQgaW4gdGhlIFY0TDIgc3RhdGVmdWwgY29kZWMgQVBJCnRo
cmVhZHMgYWxvbmcgd2l0aCBob3cgbWFueSBlbmNvZGVkIGZyYW1lcyB3ZXJlIGFsbG93ZWQgaW4g
YSBzaW5nbGUKVjRMMiBidWZmZXIuIEkgY2VydGFpbmx5IGhhZG4ndCBzZWVuIGEgc3RhdGVtZW50
IGFib3V0IHRoZSBoZWFkZXIKYnl0ZXMgYmVpbmcgY29tYmluZWQgd2l0aCB0aGUgbmV4dCBmcmFt
ZS4KSWYgdGhlIGJlaGF2aW91ciByZXF1aXJlZCBieSBWNEwyIGlzIHRoYXQgaGVhZGVyIGJ5dGVz
IGFuZCBmb2xsb3dpbmcKZnJhbWUgYXJlIGluIHRoZSBzYW1lIGJ1ZmZlciwgdGhlbiB0aGF0IGlz
IHJlbGF0aXZlbHkgZWFzeSB0byBhY2hpZXZlCmluIHRoZSBmaXJtd2FyZS4gVGhpcyB3b3JrYXJv
dW5kIGNhbiByZW1haW4gZm9yIG9sZGVyIGZpcm13YXJlIGFzIGl0CndpbGwgbmV2ZXIgdHJpZ2dl
ciBpZiB0aGUgZmlybXdhcmUgaGFzIGNvbWJpbmVkIHRoZSBmcmFtZXMuCgoKT3IgYXJlIHlvdSBz
YXlpbmcgdGhhdCB0aGUgaGVhZGVyIGJ5dGVzIHJlbWFpbiBpbiB0aGVpciBvd24gYnVmZmVyLApi
dXQgdGhlIHRpbWVzdGFtcCB3YW50cyB0byBiZSB0aGUgc2FtZSBhcyB0aGUgbmV4dCBmcmFtZT8g
VGhhdCBpcwpoYXJkZXIgdG8gYWNoaWV2ZSBpbiB0aGUgZmlybXdhcmUsIGJ1dCBjb3VsZCBwcm9i
YWJseSBiZSBkb25lIGluIHRoZQprZXJuZWwgZHJpdmVyIGJ5IGhvbGRpbmcgb24gdG8gdGhlIGhl
YWRlciBieXRlcyBmcmFtZSB1bnRpbCB0aGUgbmV4dApidWZmZXIgaGFkIGJlZW4gcmVjZWl2ZWQs
IGF0IHdoaWNoIHBvaW50IHRoZSB0aW1lc3RhbXAgY2FuIGJlIGNvcGllZAphY3Jvc3MuIFBvc3Np
YmxlLCBidXQganVzdCBuZWVkcyBzbGlnaHRseSBjYXJlZnVsIGhhbmRsaW5nIHRvIGVuc3VyZQp3
ZSBkb24ndCBsb3NlIGJ1ZmZlcnMgYWNjaWRlbnRhbGx5LgoKICBEYXZlCgo+ID4KPiA+IExpbms6
IGh0dHBzOi8vZ2l0aHViLmNvbS9yYXNwYmVycnlwaS9saW51eC9pc3N1ZXMvMTgzNgo+ID4gU2ln
bmVkLW9mZi1ieTogRGF2ZSBTdGV2ZW5zb24gPGRhdmUuc3RldmVuc29uQHJhc3BiZXJyeXBpLm9y
Zz4KPiA+IC0tLQo+ID4gIC4uLi9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEv
YmNtMjgzNS1jYW1lcmEuYyAgfCAxNCArKysrKysrKysrKystLQo+ID4gIC4uLi9zdGFnaW5nL3Zj
MDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEvYmNtMjgzNS1jYW1lcmEuaCAgfCAgMiArKwo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1l
cmEvYmNtMjgzNS1jYW1lcmEuYyBiL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4
MzUtY2FtZXJhL2JjbTI4MzUtY2FtZXJhLmMKPiA+IGluZGV4IGRjZTZlNmQuLjBjMDQ4MTUgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1LWNhbWVy
YS9iY20yODM1LWNhbWVyYS5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNl
cy9iY20yODM1LWNhbWVyYS9iY20yODM1LWNhbWVyYS5jCj4gPiBAQCAtMzU5LDcgKzM1OSw5IEBA
IHN0YXRpYyB2b2lkIGJ1ZmZlcl9jYihzdHJ1Y3QgdmNoaXFfbW1hbF9pbnN0YW5jZSAqaW5zdGFu
Y2UsCj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgICAgICAg
ICAgIGlmIChkZXYtPmNhcHR1cmUuZnJhbWVfY291bnQpIHsKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICBpZiAoZGV2LT5jYXB0dXJlLnZjX3N0YXJ0X3RpbWVzdGFtcCAhPSAtMSAmJiBwdHMpIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoZGV2LT5jYXB0dXJlLnZjX3N0YXJ0X3RpbWVz
dGFtcCAhPSAtMSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52
YjJfYnVmLnRpbWVzdGFtcCA9IGt0aW1lX2dldF9ucygpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIH0gZWxzZSBpZiAocHRzKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBr
dGltZV90IHRpbWVzdGFtcDsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHM2NCBy
dW50aW1lX3VzID0gcHRzIC0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
ZXYtPmNhcHR1cmUudmNfc3RhcnRfdGltZXN0YW1wOwo+ID4gQEAgLTM3Miw4ICszNzQsMTUgQEAg
c3RhdGljIHZvaWQgYnVmZmVyX2NiKHN0cnVjdCB2Y2hpcV9tbWFsX2luc3RhbmNlICppbnN0YW5j
ZSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGt0aW1lX3RvX25z
KHRpbWVzdGFtcCkpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52
YjJfYnVmLnRpbWVzdGFtcCA9IGt0aW1lX3RvX25zKHRpbWVzdGFtcCk7Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1
Zi0+dmIudmIyX2J1Zi50aW1lc3RhbXAgPSBrdGltZV9nZXRfbnMoKTsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGlmIChkZXYtPmNhcHR1cmUubGFzdF90aW1lc3RhbXApIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVmLT52Yi52YjJfYnVmLnRp
bWVzdGFtcCA9Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZGV2LT5jYXB0dXJlLmxhc3RfdGltZXN0YW1wOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfSBlbHNlIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYnVmLT52Yi52YjJfYnVmLnRpbWVzdGFtcCA9Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAga3RpbWVfdG9fbnMoZGV2LT5jYXB0dXJlLmtlcm5lbF9z
dGFydF90cyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldi0+Y2FwdHVyZS5s
YXN0X3RpbWVzdGFtcCA9IGJ1Zi0+dmIudmIyX2J1Zi50aW1lc3RhbXA7Cj4gPgo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIHZiMl9zZXRfcGxhbmVfcGF5bG9hZCgmYnVmLT52Yi52YjJfYnVmLCAw
LCBsZW5ndGgpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIHZiMl9idWZmZXJfZG9uZSgmYnVm
LT52Yi52YjJfYnVmLCBWQjJfQlVGX1NUQVRFX0RPTkUpOwo+ID4gQEAgLTU0MSw2ICs1NTAsNyBA
QCBzdGF0aWMgaW50IHN0YXJ0X3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwgdW5zaWdu
ZWQgaW50IGNvdW50KQo+ID4gICAgICAgICAgICAgICAgICAgICAgICBkZXYtPmNhcHR1cmUudmNf
c3RhcnRfdGltZXN0YW1wLCBwYXJhbWV0ZXJfc2l6ZSk7Cj4gPgo+ID4gICAgICAgZGV2LT5jYXB0
dXJlLmtlcm5lbF9zdGFydF90cyA9IGt0aW1lX2dldCgpOwo+ID4gKyAgICAgZGV2LT5jYXB0dXJl
Lmxhc3RfdGltZXN0YW1wID0gMDsKPiA+Cj4gPiAgICAgICAvKiBlbmFibGUgdGhlIGNhbWVyYSBw
b3J0ICovCj4gPiAgICAgICBkZXYtPmNhcHR1cmUucG9ydC0+Y2JfY3R4ID0gZGV2Owo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2JjbTI4MzUtY2FtZXJhL2Jj
bTI4MzUtY2FtZXJhLmggYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9iY20yODM1LWNh
bWVyYS9iY20yODM1LWNhbWVyYS5oCj4gPiBpbmRleCAyYjU2NzllLi4wOTI3M2IwIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEvYmNt
MjgzNS1jYW1lcmEuaAo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNt
MjgzNS1jYW1lcmEvYmNtMjgzNS1jYW1lcmEuaAo+ID4gQEAgLTkwLDYgKzkwLDggQEAgc3RydWN0
IGJtMjgzNV9tbWFsX2RldiB7Cj4gPiAgICAgICAgICAgICAgIHM2NCAgICAgICAgIHZjX3N0YXJ0
X3RpbWVzdGFtcDsKPiA+ICAgICAgICAgICAgICAgLyogS2VybmVsIHN0YXJ0IHRpbWVzdGFtcCBm
b3Igc3RyZWFtaW5nICovCj4gPiAgICAgICAgICAgICAgIGt0aW1lX3Qga2VybmVsX3N0YXJ0X3Rz
Owo+ID4gKyAgICAgICAgICAgICAvKiBUaW1lc3RhbXAgb2YgbGFzdCBmcmFtZSAqLwo+ID4gKyAg
ICAgICAgICAgICB1NjQgICAgICAgICAgICAgbGFzdF90aW1lc3RhbXA7Cj4gPgo+ID4gICAgICAg
ICAgICAgICBzdHJ1Y3QgdmNoaXFfbW1hbF9wb3J0ICAqcG9ydDsgLyogcG9ydCBiZWluZyB1c2Vk
IGZvciBjYXB0dXJlICovCj4gPiAgICAgICAgICAgICAgIC8qIGNhbWVyYSBwb3J0IGJlaW5nIHVz
ZWQgZm9yIGNhcHR1cmUgKi8KPiA+IC0tCj4gPiAyLjcuNAo+ID4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
