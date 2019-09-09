Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEBCAD3CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 09:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c/O0XgI3Fnf5NZQCWdIbvd0SzfDqiqLnIcDM4cwWmWg=; b=NoiDvXlpjJNsRecG6Bg3LXMQ+
	O+VB9Qlld/cPnBmmVN7g3PhsJs9Y57+4IUFt2ydx6KQ28wKK/raNfKlReEutI8knRXT1Qt+DLhIXz
	0XgZfNqdtDe9Rad9xX4kDijQgnHi7rSwBNS1kizAq7JDDxsIv9Dc5DE44hgzpVdbGQHiY9nzndYgm
	NVTA8hG1QcFqATqRjSnu7b9tJQ+zt/PdnOQylqr061qNakfhMNvcSwaSgdl8xdSdWjWIrtbUNKlh6
	TI3XpT3SEeKEMglTfsSuo4dp8+QSjcsqQxcGPN0/Yt6xyDTfo3QJbKfu93rgHlMtvgB3AXaGvoAUu
	Qpvk/EzHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7E2J-0002xM-6D; Mon, 09 Sep 2019 07:24:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7E1w-0002wZ-Uy
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 07:24:10 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E367E18C428C;
 Mon,  9 Sep 2019 07:24:07 +0000 (UTC)
Received: from [10.72.12.61] (ovpn-12-61.pek2.redhat.com [10.72.12.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 970AF1001948;
 Mon,  9 Sep 2019 07:24:00 +0000 (UTC)
Subject: Re: [PATCH 2/2] vhost: re-introducing metadata acceleration through
 kernel virtual address
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190905122736.19768-1-jasowang@redhat.com>
 <20190905122736.19768-3-jasowang@redhat.com>
 <20190908063618-mutt-send-email-mst@kernel.org>
 <1cb5aa8d-6213-5fce-5a77-fcada572c882@redhat.com>
 <20190909004504-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <4ee20058-0beb-111c-6750-556965423f04@redhat.com>
Date: Mon, 9 Sep 2019 15:23:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909004504-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Mon, 09 Sep 2019 07:24:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_002409_017098_72609C49 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aarcange@redhat.com, Christoph Hellwig <hch@infradead.org>,
 linux-parisc@vger.kernel.org, kvm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>, linux-mm@kvack.org,
 jglisse@redhat.com, jgg@mellanox.com, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOS85IOS4i+WNiDEyOjQ1LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+PiBT
aW5jZSBpZHggY2FuIGJlIHNwZWN1bGF0ZWQsIEkgZ3Vlc3Mgd2UgbmVlZCBhcnJheV9pbmRleF9u
b3NwZWMgaGVyZT8KPj4gU28gd2UgaGF2ZQo+Pgo+PiBBQ1FVSVJFKG1tdV9sb2NrKQo+Pgo+PiBn
ZXQgaWR4Cj4+Cj4+IFJFTEVBU0UobW11X2xvY2spCj4+Cj4+IEFDUVVJUkUobW11X2xvY2spCj4+
Cj4+IHJlYWQgYXJyYXlbaWR4XQo+Pgo+PiBSRUxFQVNFKG1tdV9sb2NrKQo+Pgo+PiBUaGVuIEkg
dGhpbmsgaWR4IGNhbid0IGJlIHNwZWN1bGF0ZWQgY29uc2lkZXIgd2UndmUgcGFzc2VkIFJFTEVB
U0UgKwo+PiBBQ1FVSVJFPwo+IEkgZG9uJ3QgdGhpbmsgbWVtb3J5IGJhcnJpZXJzIGhhdmUgYW55
dGhpbmcgdG8gZG8gd2l0aCBzcGVjdWxhdGlvbiwKPiB0aGV5IGFyZSBhcmNoaXRlY3R1cmFsLgo+
CgpPaCByaWdodC4gTGV0IG1lIGFkZCBhcnJheV9pbmRleF9ub3NwZWMoKSBpbiBuZXh0IHZlcnNp
b24uCgpUaGFua3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
