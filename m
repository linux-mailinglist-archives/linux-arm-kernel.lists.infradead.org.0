Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881BC13CB69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2KKbndgMV+9xV23PE/ZkRrG+BVy2NrNgS5Bb3pGLs8=; b=Vvkcg0Vu5x4Eec
	b+h5MnYF+RKoCHAO817686LGeIxJkYUkPNiw9g2htvxC4N7F/sJRRGlakafMP+tSuxGGKkR+ltXPg
	0LPKfCBOK+/TUgRLJZwUhF1QQHLixQFQaTBJxtUzmGZJKAMAgSKuxJ418L4z51pQaGB61Pch6e2PJ
	t0dRMGexFWPR8PwCBxDxn4gX58xfq0n6W7T3Z6KtI/39kbuS/IM40iT97JMOYDp7EIMVXPSzI704Z
	CDiGMs64g3oGd/2zL2pZzy9DffzRKrI0zVc+5y0umXI9Aj0f01up3bAG0p41J5qjn4mI9F+kMmC6B
	L4kUjKGoSNW7HRhpE07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmsC-0000Kn-UH; Wed, 15 Jan 2020 17:54:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmrz-0000Jk-NI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:54:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3429C214AF;
 Wed, 15 Jan 2020 17:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579110859;
 bh=8XXZEBWQeuNQOKt4iYmz4M93RysIhgk5hmkb1VmVVdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p+Kbv4kl/XgrM/WPt8De0USf+uWlJQG9sAsC8SuaikIcFklyS2n0b6kKycdgASJn6
 WEz6HYBwfFX77tGjXTDXmXY+tOGc6gopB9BjLn48j9qrLHRdPH77aPcumS3YBR64C3
 V9aKu1/N/0xnTQwIQXcrmIP1rsf8HAJi/GbAlfZg=
Date: Wed, 15 Jan 2020 17:54:15 +0000
From: Will Deacon <will@kernel.org>
To: CKI Project <cki-project@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-e31626d.cki (arm-next)
Message-ID: <20200115175414.GB31673@willie-the-truck>
References: <cki.8C73ABC341.AD9Q7PNV7C@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cki.8C73ABC341.AD9Q7PNV7C@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_095419_782066_E59A1CD4 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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
Cc: Jianlin Shi <jishi@redhat.com>, catalin.marinas@arm.com,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIEphbiAxNSwgMjAyMCBhdCAwNTozODoyNlBNIC0wMDAwLCBDS0kgUHJvamVj
dCB3cm90ZToKPiBXZSByYW4gYXV0b21hdGVkIHRlc3RzIG9uIGEgcmVjZW50IGNvbW1pdCBmcm9t
IHRoaXMga2VybmVsIHRyZWU6Cj4gCj4gICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4gICAgICAg
ICAgICAgQ29tbWl0OiBlMzE2MjZkNDQzZGIgLSBNZXJnZSBicmFuY2hlcyAnZm9yLW5leHQvYXNt
LWFubm90YXRpb25zJywgJ2Zvci1uZXh0L2NwdWZlYXR1cmVzJywgJ2Zvci1uZXh0L2UwcGQnLCAn
Zm9yLW5leHQva2V4ZWMvY2xlYW51cCcsICdmb3ItbmV4dC9rZXhlYy9maWxlLWtkdW1wJywgJ2Zv
ci1uZXh0L21pc2MnLCAnZm9yLW5leHQvbm9mcHNpbWQnIGFuZCAnZm9yLW5leHQvcGVyZicgaW50
byBmb3Ita2VybmVsY2kKPiAKPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMg
YXJlIHByb3ZpZGVkIGJlbG93Lgo+IAo+ICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUg
ZGV0YWlscyBiZWxvdykKPiAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4gICAgICAgICAgICBDb21w
aWxlOiBPSwo+ICAgICAgICAgICAgICBUZXN0czogRkFJTEVECj4gCj4gQWxsIGtlcm5lbCBiaW5h
cmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBo
ZXJlOgo+IAo+ICAgaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8z
ODM3ODcKPiAKPiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+IAo+ICAgICBhYXJj
aDY0Ogo+ICAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdAo+ICAg
ICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKCgpIbW0uIElmIEkgbG9vayBhdCB0
aGUgZmlsZXMgY29ycmVzcG9uZGluZyB0byB0aG9zZSB0ZXN0cyBpbiB0aGUgbG9ncyBsaW5rZWQK
dG8gYWJvdmUsIHRoZXkgYWxsIHNlZW0gdG8gaGF2ZSBwYXNzZWQuIEZvciBleGFtcGxlOgoKaHR0
cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8zODM3ODcvbG9ncy9hYXJj
aDY0X2hvc3RfMV9OZXR3b3JraW5nX3R1bm5lbF9fZ3JlX2Jhc2ljX3Jlc3VsdG91dHB1dGZpbGUu
bG9nCgpBbSBJIG1pc3Npbmcgc29tZXRoaW5nPwoKQ2hlZXJzLAoKV2lsbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
