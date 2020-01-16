Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C88813DD87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbvveX/Hk6zBEtrrJ3wz6a+Esxy2/n0I3bg/uXqjoZc=; b=LPM1jSSJlEQrUO
	Cf4slrs8E3WyPzUN5OM41nHbaXut+D5bCaEpVxavBwhgPZHzAB85iOZbORPlyuZKIlfoe0UNK4lXk
	CE3Nd6G/cIG5cVx/VSmM/CDZHxsMmcTt3KN20A3ugJ7oWmzHIKj4ECJKHx+AwdZkk0rqrwCqaIh72
	s6MYHf+F8kpw1mg+bJ2G8myDcVrj8bbQETZ+gtWofJbx+edX709COPJ0bfq9CHxKFbId12PfpBBsu
	55fQYYg9MyfFsgEGGd97SstCTGrz8H8eK9ChKPF6cGsLIO5j6ojVWJxkdu6Vvzj7+KWfRlpDJgTpb
	PBvalh7r//eKGP/bcX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6Dw-0004fb-EQ; Thu, 16 Jan 2020 14:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6Db-0004Xo-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:34:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A34C20748;
 Thu, 16 Jan 2020 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579185234;
 bh=+FdQE9Ebluf9Z06agdlMmVaPzagtassuT74k0hMff/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UVVEkx7uTwX0fW5m30btdgE/QWQjfLQmhJMVr0Lesce48lPsDd/QSfQWlgjRBOdBc
 3yF3WUPyYCya+MtYVOSJ9UcRP0K6EirCuorTPQ/5R1C9p5iEoGYFIzHBxb4lWBsMwK
 p61WMm2e1n88vYsJZThVN+7TyoM6Uc1m3A4tRW+k=
Date: Thu, 16 Jan 2020 14:33:49 +0000
From: Will Deacon <will@kernel.org>
To: Veronika Kabatova <vkabatov@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-40f39e8.cki (arm-next)
Message-ID: <20200116143348.GA17679@willie-the-truck>
References: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
 <CAKv+Gu-CEGOdTvektx_pqD=WqUXFi3YKXmj=pka5CiHc-6dCSQ@mail.gmail.com>
 <1309735432.2414024.1579184089001.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309735432.2414024.1579184089001.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_063355_531120_22D6BB23 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jianlin Shi <jishi@redhat.com>,
 CKI Project <cki-project@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmVyb25pa2EsCgpPbiBUaHUsIEphbiAxNiwgMjAyMCBhdCAwOToxNDo0OUFNIC0wNTAwLCBW
ZXJvbmlrYSBLYWJhdG92YSB3cm90ZToKPiA+IE9uIFRodSwgMTYgSmFuIDIwMjAgYXQgMTQ6MjAs
IENLSSBQcm9qZWN0IDwgY2tpLXByb2plY3RAcmVkaGF0LmNvbSA+IHdyb3RlOgo+ID4gPiBPbmUg
b3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+ID4gCj4gCj4gPiA+IGFhcmNoNjQ6Cj4gPiAK
PiA+ID4g4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKPiA+IAo+ID4gPiDinYwgTmV0
d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCj4gPiAKPiA+IE1heSBJIGtpbmRseSBzdWdnZXN0
IHRoYXQgeW91IHN0b3AgY2MnaW5nIHRoZSBtYWlsaW5nIGxpc3Qgb24gYXV0b21hdGVkLAo+ID4g
dW5tb2RlcmF0ZWQgQ0kgcmVzdWx0cz8KPiAKPiA+IEl0J3MgZ3JlYXQgdGhhdCB5b3UgcnVuIGEg
Q0kgc3lzdGVtLCBidXQgeW91IHNob3VsZCByZWFsbHkgaGF2ZSB0aGUgbWluaW1hbAo+ID4gY291
cnRlc3kgdG8gZG91YmxlIGNoZWNrIGZhaWx1cmUgcmVwb3J0cyBiZWZvcmUgc2VuZGluZyB0aGVt
IG91dCBpbnRvIHRoZQo+ID4gd29ybGQuCj4gCj4gd2UgYXJlIHNvcnJ5IGFib3V0IHRoYXQuIFRo
ZSB0ZXN0aW5nIGFuZCBlbWFpbHMgdG8gdGhlIGxpc3Qgd2VyZSByZXF1ZXN0ZWQKPiBieSBXaWxs
IGEgd2hpbGUgYWdvLiBJZiBoZSBvciBDYXRhbGluIGNoYW5nZSB0aGVpciBtaW5kcyBhYm91dCB0
aGVtIHdlIHdpbGwKPiBzdG9wIHNlbmRpbmcgdGhlbSwgaW4gdGhlIG1lYW53aGlsZSB5b3UgY2Fu
IGFsd2F5cyBzZXQgdXAgYSBmaWx0ZXIuCgpUaGUgcmVzdWx0cyBhcmUgdXN1YWxseSB2ZXJ5IHVz
ZWZ1bCAodGhhbmtzISksIGFuZCBJIHRoaW5rIGl0J3MgZ29vZCB0bwpoYXZlIHRoZW0gb24gdGhl
IGxpc3Qgc28gdGhhdCBwZW9wbGUgY2FuIHNlZSB0aGVtIGFuZCByZXBseSB0byB0aGVtLCBpZgpu
ZWNlc3NhcnkuIEkgZG9uJ3QgL3RoaW5rLyBhbnlib2R5IGlzIGRpc2FncmVlaW5nIHdpdGggdGhh
dC4KCkhvd2V2ZXIsIGluIHRoaXMgc3BlY2lmaWMgY2FzZSwgdGhlIHJlc3VsdHMgYXJlbid0IHZl
cnkgdXNlZnVsIGJlY2F1c2UgdGhlCmluZnJhc3RydWN0dXJlIGlzIHBsYXlpbmcgdXAsIHNvIEkg
dGhpbmsgdGhhdCdzIHdoYXQgQXJkIGlzIGdldHRpbmcgYXQgd2hlbgpoZSBzYXlzICJ1bm1vZGVy
YXRlZCIuCgo+IFdlIGFyZSBub3QgcGFpZCBieSBBUk0gc28gdGhlIHRlc3RpbmcgaXMgYSAic3Ry
aXZlIGZvciB0aGUgYmVzdCIgZWZmb3J0LAo+IGFzIHdlIGhhdmUgYSBidW5jaCBvZiBBUk0gbWFj
aGluZXMgd2UncmUgd2lsbGluZyB0byBsZW5kIHRvIGNvbW11bml0eSBmb3IKPiBleHRyYSBjb3Zl
cmFnZS4gV2UgYWx3YXlzIGNjIHRoZSB0ZXN0IG1haW50YWluZXJzIGFuZCBhbHNvIHVzIHRvIHRh
a2UgYQo+IGxvb2sgYXQgdGhlIGlzc3VlcyBpZiB0aGV5IGRvIG9jY3VyLiBBcyBSYWNoZWwgbWVu
dGlvbmVkLCB3ZSBhbHJlYWR5IHB1dAo+IGEgd29ya2Fyb3VuZCBpbiBwbGFjZSB0byBwcmV2ZW50
IHRoZXNlIGlzc3VlcyBmcm9tIGhhcHBlbmluZyBmdXJ0aGVyIHNvCj4gaG9wZWZ1bGx5IHlvdSB3
b24ndCBnZXQgbW9yZSBlbWFpbHMgYmVjYXVzZSBvZiB0aGVzZSBCZWFrZXIgYnVncy4KClRoYW5r
cy4gSWYgeW91IGdldCBhIGNoYW5jZSwgdGhlbiBpdCB3b3VsZCBiZSBnb29kIHRvIHN0b3AgdGhl
IHRlc3QgZW1haWxzCmdvaW5nIG91dCB0byB0aGUgbWFpbGluZyBsaXN0IHdoaWxlIHRoZSBpbmZy
YXN0cnVjdHVyZSBpcyBrbm93biB0byBiZQpicm9rZW4sIG90aGVyd2lzZSBpdCBjYW4gZGlzdHJh
Y3QgcGVvcGxlIGludG8gaW52ZXN0aWdhdGluZyBmYWlsdXJlcyB0aGF0CmFyZW4ndCBhY3R1YWxs
eSBjYXVzZWQgYnkgY2hhbmdlcyB0byB0aGUga2VybmVsLgoKQ2hlZXJzLAoKV2lsbAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
