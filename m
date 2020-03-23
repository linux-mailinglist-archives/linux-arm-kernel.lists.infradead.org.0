Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C5A190253
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 00:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meOAwvpUdWJqDBKZV2LD0f68Bq5W//4/+ZArISCodJE=; b=c3Hj9k4q8eqjIN
	RK78+F8nbdXBrOLeJaZDOT7EgDb9HZshRBxghpULoaLzaAx5/LGZhw065cj22awmM8EqyPqnU/jZl
	nAOeDjQ8Kqjze1nfq1O2/SgfTXfjTP2gzIH/2c2KgsCoPi5fPi/MeOY5BmCleRmc8H8LWNpw3nMN6
	q40l1fspLKwSpJvu5uMxVV6wBfJ4Xs2tBAloH9ccNB+b4nLBlHGspYysZpoo0JnmrBUsDRqqyug2J
	KdAEdjW2+WC1wqr0jqZj6UwLhUm6jJ6G8jX98V0ha63Fi3PtmTSeHeZI601s1H3J39yi9YGiWtIOA
	owq6HHjOmjcPIXhNH5Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWwL-0007dw-9g; Mon, 23 Mar 2020 23:57:05 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWwB-0007cm-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 23:56:57 +0000
Received: by mail-ot1-x343.google.com with SMTP id e19so15397004otj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 16:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ix8wgcI17GVIT6csUF0tAYBE2LaGOYJ65o4zi4Z+Z6c=;
 b=cxRClrgaWN/fpDic28j6dquzcmGVw+xYCBcb9evltHJpyFpceHUzfKZJMIJhOLclFx
 Yn2A3TP5Stbe0rKKKA/IDNeP6sQu7YUUq74s5fXrAmxwnECa9lFLzGP2bXzZ2DmVKPgL
 UDLguXXmIlABThiCSt5lssfGYmuDsDVHy3ovX3K/B0/plnPrQcOqebITxOQuZ/DZffwT
 OhGqRBkkNp3UqEPletWR4FAIHWjJFvKqYVN8qCAzkXSZ9bQ7aH/jjGGf8ucrXstsZArj
 gA7y7Jxp7obe4aoMrhUye9oj3Q9UqQfJGy1EH69U31823NIqpoSP5pj6ibFOe6U4weCd
 K+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ix8wgcI17GVIT6csUF0tAYBE2LaGOYJ65o4zi4Z+Z6c=;
 b=rrr2Bmm7wQRgplA2vadP+gDXM/MOqzzj+bxodfCzVY187CGHdKJci0rxPQvhzr1Ys1
 j5wKZxeo4eXYLrqHYNRVLvPpGFfZqaYyZncPq1XHQEqCRlAb6ij7JxtrD9w6YXNDGQ+4
 UMY8my20xea4DGk81Is4cokjmcgLdgXhRty/mAFp/lke9mxufwxqK1erSLud5KlcImyO
 h7PDU2G5YfiD5aGLQI8SoYZtrcXjK/35lyfkJK0O+YY7Wpqa0CyP3RGhUUVtqP4FAxPI
 Z7aJu4beo/4d508rdIZf00qcExqxGu1qDu+IlbdDYtChlM7WW2pQnaDNR2FjFxY5l7WL
 /O4Q==
X-Gm-Message-State: ANhLgQ3uc2HZX9e4I3VeOvX4yQl9IfOv5xaY0wCYLIoFDxOFtHmw8a7l
 oWmNGe6n7VS4kIswhU3Cdgh86Vp1RDUYVoM1gpJZiQ==
X-Google-Smtp-Source: ADFU+vuDPdpSQy4eIZVOQE+DA/YA6x9KuEZDOGaV/GyUNXkAFHrjBMzNKJjNEWfmfUZNmYn+XKHPMpfaDEYyQ1QtrIo=
X-Received: by 2002:a05:6830:1e10:: with SMTP id
 s16mr4024265otr.33.1585007814217; 
 Mon, 23 Mar 2020 16:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-3-mike.kravetz@oracle.com>
 <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
In-Reply-To: <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
From: Mina Almasry <almasrymina@google.com>
Date: Mon, 23 Mar 2020 16:56:43 -0700
Message-ID: <CAHS8izOeYeVi-W7z-DKw3Uv0rAqwuD1__uTr-oF6Lx=V9ekm3g@mail.gmail.com>
Subject: Re: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_165655_899913_0637C160 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTI6MDQgQU0gQ2hyaXN0b3BoZSBMZXJveQo8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Cj4KPgo+IExlIDE4LzAzLzIwMjAgw6AgMjM6MDYs
IE1pa2UgS3JhdmV0eiBhIMOpY3JpdCA6Cj4gPiBOb3cgdGhhdCBhcmNoaXRlY3R1cmVzIHByb3Zp
ZGUgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUoKSwgcGFyc2luZwo+ID4gb2YgImh1Z2VwYWdlc3o9
IiBjYW4gYmUgZG9uZSBpbiBhcmNoaXRlY3R1cmUgaW5kZXBlbmRlbnQgY29kZS4KPiA+IENyZWF0
ZSBhIHNpbmdsZSByb3V0aW5lIHRvIGhhbmRsZSBodWdlcGFnZXN6PSBwYXJzaW5nIGFuZCByZW1v
dmUKPiA+IGFsbCBhcmNoIHNwZWNpZmljIHJvdXRpbmVzLiAgV2UgY2FuIGFsc28gcmVtb3ZlIHRo
ZSBpbnRlcmZhY2UKPiA+IGh1Z2V0bGJfYmFkX3NpemUoKSBhcyB0aGlzIGlzIG5vIGxvbmdlciB1
c2VkIG91dHNpZGUgYXJjaCBpbmRlcGVuZGVudAo+ID4gY29kZS4KPiA+Cj4gPiBUaGlzIGFsc28g
cHJvdmlkZXMgY29uc2lzdGVudCBiZWhhdmlvciBvZiBodWdldGxiZnMgY29tbWFuZCBsaW5lCj4g
PiBvcHRpb25zLiAgVGhlIGh1Z2VwYWdlc3o9IG9wdGlvbiBzaG91bGQgb25seSBiZSBzcGVjaWZp
ZWQgb25jZSBmb3IKPiA+IGEgc3BlY2lmaWMgc2l6ZSwgYnV0IHNvbWUgYXJjaGl0ZWN0dXJlcyBh
bGxvdyBtdWx0aXBsZSBpbnN0YW5jZXMuCj4gPiBUaGlzIGFwcGVhcnMgdG8gYmUgbW9yZSBvZiBh
biBvdmVyc2lnaHQgd2hlbiBjb2RlIHdhcyBhZGRlZCBieSBzb21lCj4gPiBhcmNoaXRlY3R1cmVz
IHRvIHNldCB1cCBBTEwgaHVnZSBwYWdlcyBzaXplcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBN
aWtlIEtyYXZldHogPG1pa2Uua3JhdmV0ekBvcmFjbGUuY29tPgo+ID4gLS0tCj4gPiAgIGFyY2gv
YXJtNjQvbW0vaHVnZXRsYnBhZ2UuYyAgIHwgMTUgLS0tLS0tLS0tLS0tLS0tCj4gPiAgIGFyY2gv
cG93ZXJwYy9tbS9odWdldGxicGFnZS5jIHwgMTUgLS0tLS0tLS0tLS0tLS0tCj4gPiAgIGFyY2gv
cmlzY3YvbW0vaHVnZXRsYnBhZ2UuYyAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQo+ID4gICBhcmNo
L3MzOTAvbW0vaHVnZXRsYnBhZ2UuYyAgICB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gICBh
cmNoL3NwYXJjL21tL2luaXRfNjQuYyAgICAgICB8IDIyIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiA+ICAgYXJjaC94ODYvbW0vaHVnZXRsYnBhZ2UuYyAgICAgfCAxNiAtLS0tLS0tLS0tLS0tLS0t
Cj4gPiAgIGluY2x1ZGUvbGludXgvaHVnZXRsYi5oICAgICAgIHwgIDEgLQo+ID4gICBtbS9odWdl
dGxiLmMgICAgICAgICAgICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKy0tLS0tLQo+ID4g
ICA4IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEwOSBkZWxldGlvbnMoLSkKPiA+
Cj4KPiBbc25pcF0KPgo+ID4gZGlmZiAtLWdpdCBhL21tL2h1Z2V0bGIuYyBiL21tL2h1Z2V0bGIu
Ywo+ID4gaW5kZXggMmY5OTM1OWI5M2FmLi5jZDRlYzA3MDgwZmIgMTAwNjQ0Cj4gPiAtLS0gYS9t
bS9odWdldGxiLmMKPiA+ICsrKyBiL21tL2h1Z2V0bGIuYwo+ID4gQEAgLTMxNDksMTIgKzMxNDks
NiBAQCBzdGF0aWMgaW50IF9faW5pdCBodWdldGxiX2luaXQodm9pZCkKPiA+ICAgfQo+ID4gICBz
dWJzeXNfaW5pdGNhbGwoaHVnZXRsYl9pbml0KTsKPiA+Cj4gPiAtLyogU2hvdWxkIGJlIGNhbGxl
ZCBvbiBwcm9jZXNzaW5nIGEgaHVnZXBhZ2Vzej0uLi4gb3B0aW9uICovCj4gPiAtdm9pZCBfX2lu
aXQgaHVnZXRsYl9iYWRfc2l6ZSh2b2lkKQo+ID4gLXsKPiA+IC0gICAgIHBhcnNlZF92YWxpZF9o
dWdlcGFnZXN6ID0gZmFsc2U7Cj4gPiAtfQo+ID4gLQo+ID4gICB2b2lkIF9faW5pdCBodWdldGxi
X2FkZF9oc3RhdGUodW5zaWduZWQgaW50IG9yZGVyKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3Qg
aHN0YXRlICpoOwo+ID4gQEAgLTMyMjQsNiArMzIxOCwyNCBAQCBzdGF0aWMgaW50IF9faW5pdCBo
dWdldGxiX25ycGFnZXNfc2V0dXAoY2hhciAqcykKPiA+ICAgfQo+ID4gICBfX3NldHVwKCJodWdl
cGFnZXM9IiwgaHVnZXRsYl9ucnBhZ2VzX3NldHVwKTsKPiA+Cj4gPiArc3RhdGljIGludCBfX2lu
aXQgaHVnZXBhZ2Vzel9zZXR1cChjaGFyICpzKQo+ID4gK3sKPiA+ICsgICAgIHVuc2lnbmVkIGxv
bmcgbG9uZyBzaXplOwo+ID4gKyAgICAgY2hhciAqc2F2ZWRfcyA9IHM7Cj4gPiArCj4gPiArICAg
ICBzaXplID0gbWVtcGFyc2UocywgJnMpOwo+Cj4gWW91IGRvbid0IHVzZSBzIGFmdGVyIHRoYXQs
IHNvIHlvdSBjYW4gcGFzcyBOVUxMIGluc3RlYWQgb2YgJnMgYW5kIGF2b2lkCj4gdGhlIHNhdmVk
X3MKPgoKKzEKCkFja2VkLWJ5OiBNaW5hIEFsbWFzcnkgPGFsbWFzcnltaW5hQGdvb2dsZS5jb20+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
