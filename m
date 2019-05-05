Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A1113EA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 11:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yOm6AWy/yoGC1s7ovbn9ULvytoUHrLbhDlO6arQ/Op0=; b=j32Kee3yGQnAjsFFUH8GxONK+
	prQBbAz56/OfLYMgCcNcR+iWTDHnJUBHm80fj1AgwvE4e/HytjPstttQpGqs3I8+Kh4JoZat45f3u
	pf5lzJ4qjDFXKAT27CLydcmQxU6ob3dkH7qBo3b5W73CBk+Oa/hJ9yyHju7ltbblPTwND99kIjosE
	u32qnkiso0ilZ6QVYcu2iqs8Ep8qQRPEDUdoDhWl8ei566C56Tbd1mHnoZULqgBzhByzLUOs+GJ/G
	eBTcmbPUOa70xhTVNqB4pNIDreNF1g3VHdmSEne5lWo0GeCgD2x9feSrQtn9OzCjGnDVMSVxPJDWQ
	Xx0X4ksUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNDKH-0007Ug-S8; Sun, 05 May 2019 09:20:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNDK7-0007Tz-F6
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 09:20:44 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 50F6C3091749;
 Sun,  5 May 2019 09:20:42 +0000 (UTC)
Received: from [10.72.12.197] (ovpn-12-197.pek2.redhat.com [10.72.12.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC3AF5DA5B;
 Sun,  5 May 2019 09:20:32 +0000 (UTC)
Subject: Re: [RFC PATCH V3 0/6] vhost: accelerate metadata access
To: mst@redhat.com, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20190423055420.26408-1-jasowang@redhat.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <831c343f-c547-f68c-19fe-d89e8f259d87@redhat.com>
Date: Sun, 5 May 2019 17:20:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190423055420.26408-1-jasowang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Sun, 05 May 2019 09:20:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_022043_524916_59D54225 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: aarcange@redhat.com, hch@infradead.org, christophe.de.dinechin@gmail.com,
 linux-parisc@vger.kernel.org, peterx@redhat.com,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNC8yMyDkuIvljYgxOjU0LCBKYXNvbiBXYW5nIHdyb3RlOgo+IFRoaXMgc2VyaWVz
IHRyaWVzIHRvIGFjY2VzcyB2aXJ0cXVldWUgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwgdmlydHVh
bAo+IGFkZHJlc3MgaW5zdGVhZCBvZiBjb3B5X3VzZXIoKSBmcmllbmRzIHNpbmNlIHRoZXkgaGFk
IHRvbyBtdWNoCj4gb3ZlcmhlYWRzIGxpa2UgY2hlY2tzLCBzcGVjIGJhcnJpZXJzIG9yIGV2ZW4g
aGFyZHdhcmUgZmVhdHVyZQo+IHRvZ2dsaW5nLiBUaGlzIGlzIGRvbmUgdGhyb3VnaCBzZXR1cCBr
ZXJuZWwgYWRkcmVzcyB0aHJvdWdoIGRpcmVjdAo+IG1hcHBpbmcgYW5kIGNvLW9wcmVhdGUgVk0g
bWFuYWdlbWVudCB3aXRoIE1NVSBub3RpZmllcnMuCj4KPiBUZXN0IHNob3dzIGFib3V0IDIzJSBp
bXByb3ZlbWVudCBvbiBUWCBQUFMuIFRDUF9TVFJFQU0gZG9lc24ndCBzZWUKPiBvYnZpb3VzIGlt
cHJvdmVtZW50LgoKClBpbmcuIENvbW1lbnRzIGFyZSBtb3JlIHRoYW4gd2VsY29tZWQuCgpUaGFu
a3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
