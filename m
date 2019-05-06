Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461F21563B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzU/ZPBW0qmMu4hfdG+K8Ig4SBbtApUvhb9Oc5HpSOg=; b=b3MbMx0maeEyc8
	iI1vn5niohjCGDBqajOOe7Je3ju1BbfAOKpSlbd8SOlAE86GHiFTKHbQyWX+659TDhT+Is4hGooPG
	sifGs6waNrMCZB8DppuyuK1NGPTTq7YkP1kn37tC1iR8AwtPqDlBsBPZxAqVR1NphzPfFlpRQdkRP
	pG6c5/h2sDMWqOBxtS8r2JJooxSzIWsn4ZlkDpbtx64xKqvLyY+Zcr3r3oF9A5tNBBzVV5SEnzjC/
	vm5EouX4zHdT91nB/vpfDr2eYytJcFnw60yfWEHQcKUEJVSdOEXMsswX9I3/xXHD0KGcgyEOLITKn
	jDyE12TnjMO5XImxhaNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmXp-0005kC-AP; Mon, 06 May 2019 22:57:13 +0000
Received: from smtp81.iad3b.emailsrvr.com ([146.20.161.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmXg-0005en-9u; Mon, 06 May 2019 22:57:06 +0000
Received: from smtp19.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp19.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id 0189F401B0;
 Mon,  6 May 2019 18:57:01 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp19.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp19.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id E6A2F401EB;
 Mon,  6 May 2019 18:57:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1557183420;
 bh=M66upwQcYfZke/JgzTNK76Q3ajUzl56JXsDHQtItSRA=;
 h=Subject:From:Date:To:From;
 b=ekv3mC598bdCnUkrtViS4mBVXvm5CR1TUCIxxX7iMV9MaIug0mejYT+kpft5r9E9u
 8v9yn9KQ8sDPVO8Cdk0Pfm/lte100BfGxWVlT271cH+rw0XvZ4mG+cjjmg3nz1vXkc
 4SLn8N1jNU0hltSh7S/AEfdJJ+lNtAuWlLHL1X2M=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp19.relay.iad3b.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id D5A3F401B0; 
 Mon,  6 May 2019 18:56:59 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 06 May 2019 18:57:00 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <87o94fo3h0.fsf@anholt.net>
Date: Mon, 6 May 2019 15:56:58 -0700
Message-Id: <C611AB4D-7674-438D-BB95-9F83852043EA@nh6z.net>
References: <20190505034339.30778-1-nh6z@nh6z.net> <87o94fo3h0.fsf@anholt.net>
To: Eric Anholt <eric@anholt.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_155704_439712_5BB3E0AF 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 wsa@the-dreams.de, team@nwdigitalradio.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA2LCAyMDE5LCBhdCAxMToxNCBBTSwgRXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0
Lm5ldD4gd3JvdGU6Cj4gCj4gQW5uYWxpZXNlIE1jRGVybW9uZCA8bmg2ekBuaDZ6Lm5ldD4gd3Jp
dGVzOgo+IAo+PiBNb2RlbCB0aGUgSTJDIGJ1cyBjbG9jayBkaXZpZGVyIGFzIGEgcGFydCBvZiB0
aGUgQ29yZSBDbG9jayBGcmFtZXdvcmsuCj4+IFByaW1hcmlseSB0aGlzIHJlbW92ZXMgdGhlIGNs
a19nZXRfcmF0ZSgpIGNhbGwgZnJvbSBlYWNoIHRyYW5zZmVyLgo+PiBUaGlzIGNhbGwgY2F1c2Vz
IHByb2JsZW1zIGZvciBzbGF2ZSBkcml2ZXJzIHRoYXQgdGhlbXNlbHZlcyBoYXZlCj4+IGludGVy
bmFsIGNsb2NrIGNvbXBvbmVudHMgdGhhdCBhcmUgY29udHJvbGxlZCBieSBhbiBJMkMgaW50ZXJm
YWNlLgo+PiBXaGVuIHRoZSBzbGF2ZSdzIGludGVybmFsIGNsb2NrIGNvbXBvbmVudCBpcyBwcmVw
YXJlZCwgdGhlIHByZXBhcmUKPj4gbG9jayBpcyBvYnRhaW5lZCwgYW5kIGl0IG1ha2VzIGNhbGxz
IHRvIHRoZSBJMkMgc3Vic3lzdGVtIHRvCj4+IGNvbW1hbmQgdGhlIGhhcmR3YXJlIHRvIGFjdGl2
YXRlIHRoZSBjbG9jay4gIEluIG9yZGVyIHRvIHBlcmZvcm0KPj4gdGhlIEkyQyB0cmFuc2Zlciwg
dGhpcyBkcml2ZXIgc2V0cyB0aGUgZGl2aWRlciwgd2hpY2ggcmVxdWlyZXMKPj4gaXQgdG8gZ2V0
IHRoZSBwYXJlbnQgY2xvY2sgcmF0ZSwgd2hpY2ggaXQgZG9lcyB3aXRoIGNsa19nZXRfcmF0ZSgp
Lgo+PiBVbmZvcnR1bmF0ZWx5LCB0aGlzIGZ1bmN0aW9uIHdpbGwgdHJ5IHRvIHRha2UgdGhlIGNs
b2NrIHByZXBhcmUKPj4gbG9jaywgd2hpY2ggaXMgYWxyZWFkeSBoZWxkIGJ5IHRoZSBzbGF2ZSdz
IGludGVybmFsIGNsb2NrIGNhbGxzCj4+IGNyZWF0aW5nIGEgZGVhZGxvY2suCj4+IAo+PiBNb2Rl
bGluZyB0aGUgZGl2aWRlciBpbiB0aGUgQ0NGIG5hdGl2ZWx5IHJlbW92ZXMgdGhpcyBkZXBlbmRl
bmN5Cj4+IGFuZCB0aGUgZGl2aWRlciB2YWx1ZSBpcyBvbmx5IHNldCB1cG9uIGNoYW5naW5nIHRo
ZSBidXMgY2xvY2sKPj4gZnJlcXVlbmN5IG9yIGNoYW5nZXMgaW4gdGhlIHBhcmVudCBjbG9jayB0
aGF0IGNhc2NhZGUgZG93biB0byB0aGlzCj4+IGRpdmlzb3IuICBUaGlzIG9idmlhdGVzIHRoZSBu
ZWVkIHRvIHNldCB0aGUgZGl2aWRlciB3aXRoIGV2ZXJ5Cj4+IHRyYW5zZmVyIGFuZCBhdm9pZHMg
dGhlIGRlYWRsb2NrIGRlc2NyaWJlZCBhYm92ZS4gIEl0IGFsc28gc2hvdWxkCj4+IHByb3ZpZGUg
YmV0dGVyIGNsb2NrIGRlYnVnZ2luZyBhbmQgc2F2ZSBhIGZldyBjeWNsZXMgb24gZWFjaAo+PiB0
cmFuc2ZlciBkdWUgdG8gbm90IGhhdmluZyB0byByZWNhbGN1YXRlIHRoZSBkaXZpZGVyIHZhbHVl
Lgo+IAo+IEFueSBjaGFuY2Ugd2UgY291bGQgcmV1c2UgY2xrX3JlZ2lzdGVyX2RpdmlkZXIoKSBp
bnN0ZWFkIG9mIGhhdmluZyBvdXIKPiBvd24gc2V0L3JvdW5kL3JlY2FsYyByYXRlIGltcGxlbWVu
dGF0aW9ucz8KCkVyaWMgLS0KCknigJlkIGxvdmUgdG8sIGJ1dCB0aGUgc2V0X3JhdGUgaW1wbGVt
ZW50YXRpb24gaW5jbHVkZXMgc2V0dGluZyB0aGUKQkNNMjgzNV9JMkNfRkVETF9TSElGVCBhbmQg
QkNNMjgzNV9JMkNfUkVETF9TSElGVCByZWdpc3RlcnMgZm9yIHRoZSAKcmlzaW5nIGFuZCBmYWxs
aW5nIGVkZ2UgZGVsYXkgb24gdGhlIEkyQyBidXMgYmFzZWQgb24gd2hhdCB0aGUgZGl2aWRlcgp2
YWx1ZSBpcy4KCi0tCkFubmFsaWVzZSBNY0Rlcm1vbmQKbmg2ekBuaDZ6Lm5ldApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
