Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99D86BD1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/nwTycGpP8Dh9NH/ncckMezwmrDCaoi+9nDcQCI2tM=; b=kpx/wFA/gWmNve
	GgKIl90ypoRGSSRSXenruNXVpGH6UzYvdngiLvTbZrwypq9kw2EH/yjJC7L2/gFmgroDTuxt6ZZVJ
	gQ9KkgC3w9ZiLnEdvxf9hhOLsBf74x0Fw2MeXypAloJ1Oy3i/73ynEj430HxOYeT6vNE3J2ous83E
	ZFr7neokcPrXvWO6kZYzr0glQkQ3lxU5FM6W8byhZxgyd5vX3T4Yxd+jT6jkv66q+uzZp32KvhThb
	yk8I51QLQ/1XK3Wf+6Qo//mnl/0/zNluvtlzmew6Q7hXefV6cFsAgZ49bYm/uXKa40uTzNG2ScYRm
	Da4/ZdPZU0x+MbEyffUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnk6A-0001l9-2s; Wed, 17 Jul 2019 13:35:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnk61-0001kA-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:35:51 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EFE3159465;
 Wed, 17 Jul 2019 13:35:48 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-160.bos.redhat.com [10.18.17.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 85BC65DA34;
 Wed, 17 Jul 2019 13:35:46 +0000 (UTC)
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Peter Zijlstra <peterz@infradead.org>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <9fa54e98-0b9b-0931-db32-c6bd6ccfe75b@redhat.com>
 <20190717074435.GU3419@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <378093ad-46cc-7ecb-5a06-1e22ee5ce4a1@redhat.com>
Date: Wed, 17 Jul 2019 09:35:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190717074435.GU3419@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 17 Jul 2019 13:35:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_063549_952744_9D6F2276 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8xNy8xOSAzOjQ0IEFNLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPiBPbiBUdWUsIEp1bCAx
NiwgMjAxOSBhdCAxMDoxNjoyOVBNIC0wNDAwLCBXYWltYW4gTG9uZyB3cm90ZToKPj4gIEEgc2lt
cGxlIGdyYXBoaWMgdG8gaWxsdXN0cmF0ZSB0aG9zZSBxdWV1ZXMgd2lsbCBoZWxwIHRvbywgZm9y
IGV4YW1wbGUKPiBWZXJ5IG11Y2ggeWVzIQo+Cj4+IC8qCj4+IMKgKiBNQ1MgbG9jayBob2xkZXIK
Pj4gwqAqID09PT09PT09PT09PT09PQo+PiDCoCrCoMKgwqAgbWNzX25vZGUKPj4gwqAqwqDCoCAr
LS0tLS0tLS0rwqDCoMKgwqDCoCArLS0tLSvCoMKgwqDCoMKgwqDCoMKgICstLS0tKwo+PiDCoCrC
oMKgIHwgbmV4dMKgwqAgfCAtLS0+IHxuZXh0fCAtPiAuLi7CoCB8bmV4dHwgLT4gTlVMTMKgIFtN
YWluIHF1ZXVlXQo+PiDCoCrCoMKgIHwgbG9ja2VkIHwgLSvCoMKgICstLS0tK8KgwqDCoMKgwqDC
oMKgwqAgKy0tLS0rCj4+IMKgKsKgwqAgKy0tLS0tLS0tK8KgIHwKPj4gwqAqwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoCArLS0tLSvCoMKgwqDCoMKgwqDCoMKgICstLS0tKwo+PiDC
oCrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICstPiB8bmV4dHwgLT4gLi4uwqAgfG5leHR8
IC0+IFjCoMKgwqDCoCBbU2Vjb25kYXJ5IHF1ZXVlXQo+PiDCoCrCoMKgwqAgY25hX25vZGXCoMKg
wqDCoMKgwqAgKy0tLS0rwqDCoMKgwqDCoMKgwqDCoCArLS0tLSsKPj4gwqAqwqDCoCArLS0tLS0t
LS0qwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXgo+PiDCoCrC
oMKgIHwgdGFpbMKgwqAgfCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+PiDCoCrCoMKgICstLS0t
LS0tLSrCoMKgwqAKPiBBbG1vc3Q7IElJVUMgdGhhdCBjbmFfbm9kZSBpcyB0aGUgc2FtZSBhcyB0
aGUgb25lIGZyb20gbG9ja2VkLCBzbyB5b3UKPiBlbmQgdXAgd2l0aCBzb21ldGhpbmcgbGlrZToK
Pgo+PiDCoCrCoMKgwqAgbWNzX25vZGUKPj4gwqAqwqDCoCArLS0tLS0tLS0rwqDCoMKgwqDCoCAr
LS0tLSvCoMKgwqDCoMKgwqDCoMKgICstLS0tKwo+PiDCoCrCoMKgIHwgbmV4dMKgwqAgfCAtLS0+
IHxuZXh0fCAtPiAuLi7CoCB8bmV4dHwgLT4gTlVMTMKgIFtNYWluIHF1ZXVlXQo+PiDCoCrCoMKg
IHwgbG9ja2VkIHwgLSvCoMKgICstLS0tK8KgwqDCoMKgwqDCoMKgwqAgKy0tLS0rCj4+IMKgKsKg
wqAgKy0tLS0tLS0tK8KgIHwKPj4gwqAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oCArLS0tLS0tLS0tK8KgwqDCoMKgwqDCoMKgwqAgKy0tLS0rCj4+IMKgKsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKy0+IHxtY3M6Om5leHR8IC0+IC4uLsKgIHxuZXh0fCAtPiBOVUxMwqDC
oMKgwqAgW1NlY29uZGFyeSBxdWV1ZV0KPj4gICogICAgICAgICAgICAgICAgICAgfGNuYTo6dGFp
bHwgLSsgICAgICArLS0tLSsKPj4gwqAqwqDCoMKgICAgICAgICAgIMKgwqDCoMKgwqAgKy0tLS0t
LS0tLSsgIHwgICAgICAgIF4KPj4gICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICst
LS0tLS0tLSsKPj4gwqAqCj4+IMKgKiBOLkIuIGxvY2tlZCA9IDEgaWYgc2Vjb25kYXJ5IHF1ZXVl
IGlzIGFic2VudC4KPj4gwqAqLwoKWWVzLCB5b3UgYXJlIHJpZ2h0LiBUaGFua3MgZm9yIHRoZSBj
b3JyZWN0aW9uLgoKQ2hlZXJzLApMb25nbWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
