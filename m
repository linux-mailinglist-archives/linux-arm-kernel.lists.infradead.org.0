Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9457190261
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 01:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXCDu893fAX5E3D9UMaz486VucYRGXcWc58cjkq8gJw=; b=IQghYKMvyKlLWf
	ZQG5U5vRttLlLPWE8KVduhv4WWdMDFCHq5S8wcaxiLRoJbZX05gCtyO+JE0TYat6wErURFOukiAo+
	s8LYS74h4ecVt6XMsj4Jk2IlFnsOGrq3A40obyKnmBk1hGTcXaBB9cDre0gCXhPyO9zyhH5wmbpvL
	2wLUisNElna8B0KV8CmfaFkmKuJHCW9bF/+GAu8bg/kNmg4djZAnGsCHaDEHoPhgHQrxuUYTtK+4W
	sSjydmDNGb2qco50LCsE1MYdR3U3vEDc9G6PRYKL9oXjBzNGV9EEQk4IkFz118d0L3x0rRLwGUJSX
	CmOBuizOxU0Z5bWATRQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGX1X-0001Z2-JH; Tue, 24 Mar 2020 00:02:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGX1P-0001YW-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 00:02:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so6640486plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 17:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=FMJ8LYsOHCuxBqPm4WnPrre6tQnfFkDx3c9qEXiQywU=;
 b=aO/UHxQdGJRQXfe0gajEMy3sGlCxXRCc3f+LSbVWpchMNbVtKZlSBDkpbbwIq1wKKB
 l5LEj159s+8HKvRrWNsXpJ4o9nzeKqe/Bwt2n2HOwnq6c6ea2JdA304hfC5uwxVTWY3s
 CvBgDzZy77UyIYQ6nDbajdddwlhO2KtcrgZ9gKvon0KDcq6Rq8l1KDNq1Fak+VeYN7vo
 rU3ZxVAI4/u+gyyF0rwE+TtBqUlRA4/zknSEDLxE/82GNcxCXf+oUQjbVj3Fj2wsZ5OY
 mEvRKcuBOyBREANNxCGGIDLP7tR7ggXVT38pM2wvgc6Td4ZMmMXjeIkGmVWRoNuZ9pP7
 l7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=FMJ8LYsOHCuxBqPm4WnPrre6tQnfFkDx3c9qEXiQywU=;
 b=KInyixwYiibb865/SthLmEXbTqzRPLvix7HEGn23ViOjrNw6NgcDl0IvN25akXprly
 z+Cmos9IAXWODc6MJJ82H1e6TduAzgfkfJ3p2stGUNqkE5TdKGqet4eND8zQpZfk6LkV
 3ub9/lDLTSfpqKABx/z4gjiglQjOxb9g9Bys3LH5GnB/l/6SnQAQSMFPyr6FoAb0bQNp
 vL5RBdVB/Dnx+VDzpb5ATBCoWKG+QejWa698/QR7IVm0C+S8rV0rqgcMe81hH0YxZUBk
 yXex+Q++ukenUeCGW0swnhFv03UOCkF/Ji190fPW/UQcMRBHuaiQKIJXja6lSroEZjcM
 1wJw==
X-Gm-Message-State: ANhLgQ3YZ/WC0+iz0bS2kIPA7Cg44aaZETzKGwiP8VFAwe4L6dFGPOro
 1O+ZIf+kA3L2bbbbei8cyLwAy2Ci
X-Google-Smtp-Source: ADFU+vt4eSDrMXwiJThWBk2KCPEqmaH+a6P8AsrouFAy5qucFrUDbg4uFbP014TWoquAwITfNMAoIg==
X-Received: by 2002:a17:902:a701:: with SMTP id
 w1mr21873666plq.165.1585008138501; 
 Mon, 23 Mar 2020 17:02:18 -0700 (PDT)
Received: from mail.google.com ([149.248.10.52])
 by smtp.gmail.com with ESMTPSA id z63sm13434476pgd.12.2020.03.23.17.02.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Mar 2020 17:02:17 -0700 (PDT)
Date: Tue, 24 Mar 2020 00:02:15 +0000
From: Changbin Du <changbin.du@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Two questions about cache coherency on arm platforms
Message-ID: <20200324000214.xl7aomdboyby3b4g@mail.google.com>
References: <20200323123524.w67fici6oxzdo665@mail.google.com>
 <20200323131720.GE2597@C02TD0UTHF1T.local>
 <20200323161537.ptjrihqotgmon7tr@mail.google.com>
 <20200323164723.GA8652@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323164723.GA8652@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-508-7c9a6d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_170219_232872_5FD44D36 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [changbin.du[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMDQ6NDc6MjRQTSArMDAwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIE1vbiwgTWFyIDIzLCAyMDIwIGF0IDA0OjE1OjQwUE0gKzAwMDAsIENoYW5nYmlu
IER1IHdyb3RlOgo+ID4gSGkgTWFyaywKPiA+IFRoYW5rcyBmb3IgeW91ciBhbnN3ZXIuIEkgc3Rp
bGwgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgZmlyc3QgcXVlc3Rpb24uCj4gPiAKPiA+IE9uIE1vbiwg
TWFyIDIzLCAyMDIwIGF0IDAxOjE3OjIwUE0gKzAwMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+
ID4gT24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMDg6MzU6MjZQTSArMDgwMCwgQ2hhbmdiaW4gRHUg
d3JvdGU6Cj4gPiA+ID4gSGksIEFsbCwKPiA+ID4gPiBJIGFtIG5vdCB2ZXJ5IGZhbWlsaWFyIHdp
dGggQVJNIHByb2Nlc3NvcnMuIEkgaGF2ZSB0d28gcXVlc3Rpb25zIGFib3V0Cj4gPiA+ID4gY2Fj
aGUgY29oZXJlbmN5LiBDb3VsZCBhbnlvbmUgaGVscCBtZT8KPiA+ID4gPiAKPiA+ID4gPiAxLiBI
b3cgaXMgY2FjaGUgY29oZXJlbmN5IG1haW50ZW5hbmNlZCBvbiBBUk12OCBiaWcuTElUVExFIHN5
c3RlbT8KPiA+ID4gPiBBcyBmYXIgYXMgSSBrbm93LCBiaWcgY29yZXMgYW5kIGxpdHRsZSBjb3Jl
cyBhcmUgaW4gc2VwZXJhdGUgY2x1c3RlcnMgb24KPiA+ID4gPiBiaWcuTElUVExFIHN5c3RlbS4K
PiA+ID4gCj4gPiA+IFRoaXMgaXMgb2Z0ZW4gdHJ1ZSwgYnV0IG5vdCBhbHdheXMgdGhlIGNhc2Uu
IEZvciBleGFtcGxlLCB3aXRoIERTVSBiaWcKPiA+ID4gYW5kIGxpdHRsZSBjb3JlcyBjYW4gYmUg
cGxhY2VkIHdpdGhpbiB0aGUgc2FtZSBjbHVzdGVyLgo+ID4gCj4gPiBZZXMsIGl0IGlzIHR1cmUg
Zm9yIER5bmFtSVEgdGhhdCBibCBjb3JlcyBjYW4gYmUgcGxhY2VkIHdpdGhpbiB0aGUgc2FtZSBj
bHVzdGVyLgo+ID4gQnV0IEkgZG9uJ3QgdW5kZXJzdGFuZCBob3cgbGludXggc3VwcG9ydCBiaWcu
TElUVExFIGJlZm9yZSBEeW5hbUlRLgo+IAo+IE11bHRpcGxlIGNsdXN0ZXJzIGNhbiBiZSBpbiB0
aGUgc2FtZSBJbm5lciBTaGFyZWFibGUgZG9tYWluLCBhbmQgTGludXgKPiByZWxpZXMgb24gdGhp
cyBiZWluZyB0aGUgY2FzZSBmb3Igc3lzdGVtcyBpdCBzdXBwb3J0cy4gSXQncyBwb3NzaWJsZSB0
bwo+IGJ1aWxkIGEgc3lzdGVtIHdoZXJlIGNsdXN0ZXJzIGFyZSBpbiBkaXN0aW5jdCBJbm5lciBT
aGFyZWFibGUgZG9tYWlucywKPiBidXQgTGludXggZG9lcyBub3Qgc3VwcG9ydCB1c2luZyBhbGwg
Y29yZXMgb24gc3VjaCBhIHN5c3RlbS4KPiAKPiBFdmVuIHdpdGggQ0NJLCBDQ04sIENNTiwgZXRj
LCBMaW51eCByZXF1aXJlcyB0aGF0IGFsbCBjb3JlcyAod2hpY2ggaXQgaXMKPiB0b2xkIGFib3V0
KSBhcmUgaW4gdGhlIHNhbWUgSW5uZXIgU2hhcmVhYmxlIGRvbWFpbi4gVGhhdCBpcyB3aGF0IGlz
Cj4gY29tbW9ubHkgYnVpbHQuCj4KVGhhbmsgeW91LCBJIHNlZSBub3cuIEkgdGhvdWdodCBjbHVz
dGVycyBtdXN0IGJlIGluIGRpc3RpbmN0IElubmVyClNoYXJlYWJsZSBkb21haW5zLiBTbyBJIHdh
cyB3cm9uZy4gVGhlIG1hbm51YWwgaXMgc29tZXdoYXQgbWlzbGVhZGluZy4KCj4gPiBJIHJlYWQg
YmVsb3cgZGVzY3JpcHRpb24gaW4gQVJNIENvcnRleC1BIFNlcmllcyBQcm9ncmFtbWVy4oCZcyBH
dWlkZSBmb3IKPiA+IEFSTXY4LUEuCj4gPiAgfCBiaWcuTElUVExFIHNvZnR3YXJlIG1vZGVscyBy
ZXF1aXJlIHRyYW5zcGFyZW50IGFuZCBlZmZpY2llbnQgdHJhbnNmZXIgb2YgZGF0YSBiZXR3ZWVu
IGJpZyBhbmQgTElUVExFIGNsdXN0ZXJzLgo+ID4gIHwgQ29oZXJlbmN5IGJldHdlZW4gY2x1c3Rl
cnMgaXMgcHJvdmlkZWQgYnkgYSBjYWNoZS1jb2hlcmVudCBpbnRlcmNvbm5lY3Qgc3VjaCBhcyB0
aGUgQVJNIENvcmVMaW5rIENDSS00MDAgZGVzY3JpYmVkIGluIENoYXB0ZXIgMTQuCj4gPiAKPiA+
IFNvIEkgdGhpbmsgIGJpZyBjb3JlcyBhbmQgbGl0dGxlIGNvcmVzIGFyZSBpbiBkaWZmZXJlbnQg
Y2x1c3RlcnMgaW4gdGhpcwo+ID4gY2FzZS4gVGhlbiB3ZSBhcmUgbm90IHdpdGhpbiB0aGUgc2Ft
ZSBJbm5lciBTaGFyZWFibGUgZG9tYWluPwo+IAo+IExpbnV4IHJlcXVpcmVzIHRoYXQgdGhvc2Ug
Y2x1c3RlcnMgYXJlIGluIHRoZSBzYW1lIElubmVyIFNoYXJlYWJsZQo+IGRvbWFpbiwgYW5kIHRo
YXQncyB3aGF0IHBlb3BsZSAobW9zdGx5KSBidWlsZCB0b2RheS4KPiAKPiBUaGFua3MsCj4gTWFy
ay4KCi0tIApDaGVlcnMsCkNoYW5nYmluIER1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
