Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3801F4FCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prsAh1ZnpFJReiYGPNYC18HzDktOoRv8mt+7jiq6Xas=; b=I7PEA7LZVJDZQ0
	sRNxneH9hWckSaAK6Smg0AINtr0cX8tCmN20wyWJNKWcLW2k9MTNiNPd6HS84wO/Be+SOHJ/7LIdv
	GV5AFS5t1Io4zW30dZKIUviYSrgm8rJW4rNsalRzeZp8HyHxJ/NorRErazYi8v0UgzeAuiYaPsyUo
	m/ip/z5P6mUfhfenaOMpc+hfOTSs1kYm9NgWGkMx4JQsfKLX7/x27ls9CeQkEdLr7vJlH52p+086M
	xZhHcAYQbRi4kce4xSEIwUSH7GOH67AiYLNfkN0ThvOBQo48y/jdmsjuuTMrXucFWQIVe1RL3LCm0
	5vpBMPIZVp6r6rP1oNDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivc3-0002vn-Ly; Wed, 10 Jun 2020 07:57:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivbp-0002um-BH
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:57:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AE8A206C3;
 Wed, 10 Jun 2020 07:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591775836;
 bh=i0GKyEEgP/d/WJmGZui0xw8vOIPmyZHfPnzNhX2dXNM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oxMoP3RQ2ZxDZxQTVNc7pdMDGnBLbnF57UtXv+oyWa4vg9Hb5X4nGwZgiUStJ6RMQ
 Sm9U7RUCEGHGt2X1UAxqeI3BNMCWnXNcVHvwLeZzs2JIdF+8XyUHUBX3O0Q8dM7HZb
 vpCZBYiRTIqYWBlpmD2TuPFmrBAnDOXYjA7iEn7w=
Date: Wed, 10 Jun 2020 08:57:12 +0100
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFC PATCH 0/3] firmware: Add support for PSA FF-A interface
Message-ID: <20200610075711.GC15939@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200604133746.GA2951@willie-the-truck>
 <20200609174123.GA5732@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609174123.GA5732@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_005721_268734_26B7E424 
X-CRM114-Status: GOOD (  32.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, qwandor@google.com,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ardb@kernel.org, tabba@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VkZWVwLAoKT24gVHVlLCBKdW4gMDksIDIwMjAgYXQgMDY6NDE6MjNQTSArMDEwMCwgU3Vk
ZWVwIEhvbGxhIHdyb3RlOgo+IE9uIFRodSwgSnVuIDA0LCAyMDIwIGF0IDAyOjM3OjQ2UE0gKzAx
MDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gT24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMTA6NDU6
MDlBTSArMDEwMCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+ID4gPiBTb3JyeSBmb3IgcG9zdGluZyBp
biB0aGUgbWlkZGxlIG9mIG1lcmdlIHdpbmRvdyBhbmQgSSBtdXN0IGhhdmUgZG9uZQo+ID4gPiB0
aGlzIGxhc3Qgd2VlayBpdHNlbGYuIFRoaXMgaXMgbm90IHRoZSBkcml2ZXIgSSBoYWQgdGhvdWdo
dCBhYm91dCBwb3N0aW5nCj4gPiA+IGxhc3Qgd2Vlay4gQWZ0ZXIgSSBzdGFydGVkIGNsZWFuaW5n
IHVwIGFuZCBsb29raW5nIGF0IFdpbGwncyBLVk0gcHJvdG90eXBlWzFdCj4gPiA+IGZvciBQU0Eg
RkYtQSAocHJldmlvdXNseSBrbm93biBhcyBTUENJKSwKPiA+Cj4gPiBZZXMsIEkgbmVlZCB0byBk
byB0aGUgQmlnIFJlbmFtZSBhdCBzb21lIHBvaW50LiBKb3kuCj4gPgo+IAo+IPCfmIEgCgpSZW5h
bWVkIHZlcnNpb24gaGVyZToKCmh0dHBzOi8vYW5kcm9pZC1rdm0uZ29vZ2xlc291cmNlLmNvbS9s
aW51eC8rL3JlZnMvaGVhZHMvd2lsbGRlYWNvbi9wc2EtZmZhCgphbHRob3VnaCBJIGhhdmVuJ3Qg
cHN5Y2hlZCBteXNlbGYgdXAgdG8gd3JpdGUgeWFtbCB5ZXQuCgo+ID4gU2V0dGluZyB0aGUgc3Rh
dGljIFJYL1RYIGJ1ZmZlciBhbGxvY2F0aW9uIGFzaWRlLCB3aHkgaXMgYSBEVCBub2RlIG5lZWRl
ZAo+ID4gYXQgYWxsIGZvciB0aGUgY2FzZSB3aGVyZSBMaW51eCBpcyBydW5uaW5nIHB1cmVseSBh
cyBhbiBGRi1BIGNsaWVudD8gSQo+ID4gdGhvdWdodCBldmVyeXRoaW5nIHNob3VsZCBiZSBkaXNj
b3ZlcmFibGUgdmlhIEZGQV9WRVJTSU9OLCBGRkFfRkVBVFVSRVMsCj4gPiBGRkFfUEFSVElUSU9O
X0lORk9fR0VUIGFuZCBGRkFfSURfR0VUPyBUaGF0IHNob3VsZCBtZWFuIHdlIGNhbiBnZXQgYXdh
eQo+ID4gd2l0aG91dCBhIGJpbmRpbmcgYXQgYWxsIGZvciB0aGUgY2xpZW50IGNhc2UuCj4gPgo+
IAo+IEFncmVlZCwgSSBhZGRlZCBmb3IgUnhUeCBidWZmZXJzIGFuZCBpbml0aWFsbHkgdG8gYnVp
bGQgdGhlIHBhcmVudC9jaGlsZAo+IGhpZXJhcmNoeSBmb3IgYWxsIHVzZXJzIG9mIHRoZSBkcml2
ZXIuIEluaXRpYWxseSBJIHdhcyBhc3N1bWluZyBvbmx5Cj4gaW4ta2VybmVsIHVzZXJzIGFuZCBu
b3cgSSBhZ3JlZSB3ZSBzaG91bGQgYXZvaWQgYW55IGluIGtlcm5lbCB1c2VycyBpZgo+IHBvc3Np
YmxlLgo+IAo+IE9uZSB0aGluZyB0byBub3RlIEZGQV9QQVJUSVRJT05fSU5GT19HRVQgcmVsaWVz
IG9uIFJ4IGJ1ZmZlcnMgdG8gc2VuZCB0aGUKPiBpbmZvcm1hdGlvbiB0byB0aGUgY2FsbGVyLiBT
byB3ZSBuZWVkIHRvIGhhdmUgZXN0YWJsaXNoZWQgYnVmZmVycyBiZWZvcmUKPiB0aGF0IGFuZCBv
bmUgb2YgdGhlIHJlYXNvbiB5b3UgZG9uJ3QgZmluZCB0aGF0IGluIHRoaXMgUkZDLiBJIGRyb3Bw
ZWQgdGhhdAo+IHRvbyB3aGljaCBJIHdhbnRlZCBpbml0aWFsbHkuCgpPaywgc291bmRzIGxpa2Ug
d2Ugc2hvdWxkIGF0IGxlYXN0IGdldCB0byBhIHBvc2l0aW9uIHdoZXJlIHdlIGNhbiBlbnVtZXJh
dGUKdGhpbmdzLCB0aG91Z2guCgo+ID4gPiBTb3JyeSBmb3IgbG9uZyBlbWFpbCBhbmQgdG9vIG1h
bnkgcXVlc3Rpb25zLCBidXQgSSB0aG91Z2h0IGl0IGlzIGVhc2llcgo+ID4gPiB0aGlzIHdheSB0
byBiZWdpbiB3aXRoIHRoYW4gdGhyb3dpbmcgaHVnZSBjb2RlIGltcGxlbWVudGluZyBsb2FkcyBv
ZiBBUElzCj4gPiA+IHdpdGggbm8gdXNlcnMoZXhwZWN0IGV4YW1wbGUgcGFydGl0aW9uKSBlc3Bl
Y2lhbGx5IHRoYXQgSSBhbSBwb3N0aW5nIHRoaXMKPiA+ID4gZHVyaW5nIG1lcmdlIHdpbmRvdy4K
PiA+Cj4gPiBObyBwcm9ibGVtLiBNYXliZSBpdCB3b3VsZCBoZWxwIGlmIEkgZGVzY3JpYmVkIHJv
dWdobHkgd2hhdCB3ZSB3ZXJlIHRoaW5raW5nCj4gPiBvZiBkb2luZyBmb3IgS1ZNICh0aGlzIGlz
IG9wZW4gZm9yIGRpc2N1c3Npb24sIG9mIGNvdXJzZSk6Cj4gPgo+ID4gIDEuIERlc2NyaWJlIEtW
TS1tYW5hZ2VkIHBhcnRpdGlvbnMgaW4gdGhlIERULCBhbG9uZyB0aGUgbGluZXMgb2YgWzFdCj4g
PiAgMi4gRXhwb3NlIGVhY2ggcGFydGl0aW9uIGFzIGEgZmlsZSB0byB1c2Vyc3BhY2UuIEUuZy46
Cj4gPgo+ID4gICAgIC9kZXYvc3BjaS86Cj4gPgo+ID4gCXNlbGYKPiA+IAllM2E0OGZhNS1kYzU0
LTRhOGItODk4Yi1iZGM0ZGZlZWI3YjgKPiA+IAk0OWY2NTA1Ny1kMDAyLTRhZTItYjRlZS1kMzFj
Nzk0MGExM2QKPiA+Cj4gPiAgICAgSGVyZSwgc2VsZiB3b3VsZCBiZSBhIHN5bWxpbmsgdG8gdGhl
IGhvc3QgdXVpZC4gVGhlIGhvc3QgdXVpZCBmaWxlCj4gPiAgICAgd291bGQgaW1wbGVtZW50IEZG
QV9NRU0gb3BlcmF0aW9ucyB1c2luZyBhbiBpb2N0bCgpLCBzbyB5b3UgY291bGQsCj4gPiAgICAg
Zm9yIGV4YW1wbGUsIHNoYXJlIGEgdXNlciBidWZmZXIgd2l0aCBtdWx0aXBsZSBwYXJ0aXRpb25z
IGJ5IGlzc3VpbmcKPiA+ICAgICBhIE1FTV9TSEFSRSBpb2N0bCgpIG9uIHNlbGYsIHBhc3Npbmcg
dGhlIGZkcyBmb3IgdGhlIGJvcnJvd2VyIHBhcnRpdGlvbnMKPiA+ICAgICBhcyBhcmd1bWVudHMu
IE1lc3NhZ2luZyB3b3VsZCBiZSBpbXBsZW1lbnRlZCBhcyBpb2N0bCgpcyBvbiB0aGUKPiA+ICAg
ICBwYXJ0aXRpb24gdXVpZCBmaWxlcyB0aGVtc2VsdmVzLgo+ID4KPiAKPiBPSywgSUlVQyB0aGF0
IGNvdmVycyBtb3N0bHkgS1ZNIGltcGxlbWVudGF0aW9uLiBXZSBzdGlsbCBuZWVkIGEgd2F5IHRv
Cj4gc2hhcmUgdGhlIFJ4VHggYnVmZmVyIGluZm8gdG8gdGhlIHBhcnRpdGlvbnMgYW5kIERUL0FD
UEkoPykgaXMgb25lCj4gcG9zc2libGUgd2F5LiBCYXNlZCBvbiB5b3UgY29tbWVudCBhYm91dCBu
b3QgbmVlZGluZyBEVCBub2RlLCBkbyB5b3UgaGF2ZQo+IGFueSBvdGhlciB3YXkgdG8gY29tbXVu
aWNhdGUgdGhlIGJ1ZmZlciBpbmZvIHRvIHRoZSBwYXJ0aXRpb25zID8KClRoaXMgaXMgb25seSBh
IGNvbmNlcm4gaWYgS1ZNIGNob29zZXMgdG8gcHJvdmlkZSB0aGUgUngvVHggYnVmZmVyIHBhaXIK
dGhvdWdoLCByaWdodD8gSWYgd2UgcHVudCB0aGF0IGRvd24gdGhlIHJvYWQgZm9yIHRoZSBtb21l
bnQsIHRoZW4gd2UgY2FuCmp1c3QgcmVseSBvbiBGRkFfUlhUWF9NQVAgZm9yIG5vdy4KCj4gPiBG
b3IgY29tbXVuaWNhdGluZyB3aXRoIHBhcnRpdGlvbnMgdGhhdCBhcmUgbm90IG1hbmFnZWQgYnkg
S1ZNIChlLmcuIHRydXN0ZWQKPiA+IGFwcGxpY2F0aW9ucyksIGl0J3Mgbm90IGNsZWFyIHRvIG1l
IGhvdyBtdWNoIG9mIHRoYXQgd2lsbCBiZSBoYW5kbGVkIGluCj4gPiBrZXJuZWwgb3IgdXNlci4g
SSB0aGluayBpdCB3b3VsZCBzdGlsbCBiZSB3b3J0aCBleHBvc2luZyB0aGUgcGFydGl0aW9ucyBh
cwo+ID4gZmlsZXMsIGJ1dCBwZXJoYXBzIGhhdmluZyB0aGVtIHJvb3Qgb25seSBvciBqdXN0IHJl
dHVybmluZyAtRVBFUk0gZm9yIHRoZQo+ID4gaW9jdGwoKSBpZiBhIGtlcm5lbCBkcml2ZXIgaGFz
IGNsYWltZWQgdGhlIHBhcnRpdGlvbiBhcyBpdHMgb3duPyBJZGVhbGx5LAo+ID4gRkYtQSB3b3Vs
ZCBhbGxvdyB1cyB0byB0cmFuc2l0aW9uIHNvbWUgb2YgdGhlIFRydXN0ZWQgT1MgaW50ZXJmYWNp
bmcgY29kZQo+ID4gb3V0IHRvIHVzZXJzcGFjZSwgYnV0IEkgZG9uJ3Qga25vdyBob3cgcmVhbGlz
dGljIHRoYXQgaXMuCj4gPgo+IAo+IEFoIGdvb2QsIHNvIHdlIGNhbiBzdGlsbCBtYW5hZ2UgaW4t
a2VybmVsIHVzZXJzIHRoaXMgd2F5IGJ1dCB3ZSBuZWVkIHRvCj4gcHJvdmlkZSBpbnRlcmZhY2Ug
dG8gc3VjaCBhIGRyaXZlciB3aGljaCBJIGFncmVlIHRoYXQgd2UgbmVlZCB0byBhdm9pZAo+IGlm
IHBvc3NpYmxlLgo+IAo+ID4gQW55d2F5LCB0byBlbmFibGUgdGhpcywgSSB0aGluayB3ZSBuZWVk
IGEgY2xlYXIgc2VwYXJhdGlvbiBpbiB0aGUga2VybmVsCj4gPiBiZXR3ZWVuIHRoZSBGRi1BIGNv
ZGUgYW5kIHRoZSB1c2VyczoKPiBBZ3JlZWQuCj4gCj4gPiBLVk0gd2lsbCB3YW50IHRvIGV4cG9z
ZSB0aGluZ3MgYXMgYWJvdmUsIGJ1dCBpZiBkcml2ZXJzIG5lZWQgdG8gdXNlIHRoaXMKPiA+IHN0
dWZmIGFzIHdlbGwgdGhlbiB0aGV5IGNhbiBwbHVnIGluIGFzIGFkZGl0aW9uYWwgdXNlcnMgYW5k
IHdlIGRvbid0IGhhdmUgdG8KPiA+IHdvcnJ5IGFib3V0IHRyaXBwaW5nIG92ZXIgdGhlIFJYL1RY
IGJ1ZmZlcnMgZXRjLgo+ID4KPiAKPiBJIGFtIGNvbmZ1c2VkIGEgYml0LiBXaGVuIHlvdSByZWZl
ciBkcml2ZXJzIGFib3ZlLCBhcmUgeW91IHJlZmVycmluZyB0bwo+IGRyaXZlcnMgaW4gaG9zdCBr
ZXJuZWwoaHlwZXJ2aXNvcikgb3IgaW4gdGhlIHBhcnRpdGlvbnMuIEkgZmFpbCB0bwo+IGltYWdp
bmUgbmVlZCBmb3IgdGhlIGZvcm1lci4KCkknbSByZWZlcnJpbmcgdG8gaW4ta2VybmVsIHVzZXJz
IGluIHRoZSBob3N0IGtlcm5lbC4gRm9yIEtWTS1tYW5hZ2VkIGd1ZXN0cywKd2UgbWF5IG5vdCBu
ZWVkIHRoZXNlLCBhbHRob3VnaCBzaWduYWxsaW5nIHRoaW5ncyBsaWtlIHN5c3RlbSBzaHV0ZG93
biBtaWdodApiZSBiZXR0ZXIgb2ZmIGRvbmUgd2l0aG91dCByZWx5aW5nIG9uIHVzZXJzcGFjZS4g
QnV0IG15IHBvaW50IGlzIHJlYWxseSB0aGF0CnNlcGFyYXRpbmcgdGhlIGJ1ZmZlciBtYW5hZ2Vt
ZW50IGZyb20gdGhlIHVzZXJzIG1lYW5zIHdlIGNhbiBzZXJpYWxpc2UKY29uc3VtZXJzLCB3aGV0
aGVyIHRoZXkgYXJlIGluLWtlcm5lbCBvciBvdXQgaW4gdXNlcnNwYWNlLgoKPiA+IFdoYXQgZG8g
eW91IHRoaW5rLCBhbmQgZG8geW91IHJlY2tvbiB5b3UgY2FuIHNwaW4gYSBjdXQtZG93biBkcml2
ZXIgdGhhdAo+ID4gaW1wbGVtZW50cyB0aGUgY29tbW9uIHBhcnQgb2YgdGhlIGxvZ2ljIChzaW5j
ZSBJIGtub3cgeW91J3ZlIHdyaXR0ZW4gbXVjaAo+ID4gb2YgdGhpcyBjb2RlIGFscmVhZHkpPwo+
ID4KPiAKPiBJIGFtIG5vdCBzdXJlIGlmIEkgYW0gYWxpZ25lZCB3aXRoIHlvdXIgdGhvdWdodHMg
b24gdGhlIGJ1ZmZlciBzaGFyaW5nCj4geWV0LgoKT2ssIHBsZWFzZSBsZXQgbWUga25vdyBpZiB5
b3UgaGF2ZSBhbnkgbW9yZSBxdWVzdGlvbnMuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
