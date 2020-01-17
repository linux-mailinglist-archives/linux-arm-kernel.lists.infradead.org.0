Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70571408B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:14:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+w8PW4Mp2ViaMmdQ+lcoO6JaPAwhyM4p0d3Rc9SWls=; b=tTs+VPpYP1oYI7
	yEguZQcpPipczdHKq2yqaxvWAr5SSTniLjEwW3+ATcIu0vjwFotpEkNOg+8OmmGJpe9wNeOLvRvmv
	RIB2mnKwT5mp23MbmUP3rfiXmItkxuvQYr9RHpvDyWaZ55mN8kyEiHAy99qNNNbntBwON3pHAuGw/
	OJ3hDt6ssKKnlceCKDe4sgSZptbEpDXXjFMEvzXevVoDxA/ErR8Pj9o6lttEF+b3wjwf5UhKWixtX
	ti0cZY8i9rK6QsAb1QM4C/DlLvi85qiaHBxvag4ADe25uyiRYkpXLQ2Rr+zDEfqyGE+yeaKSuNTVY
	D7VnfGKa81NJLWyeQzzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPZm-0001CA-0S; Fri, 17 Jan 2020 11:14:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPZY-0001B0-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:13:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE1D32082F;
 Fri, 17 Jan 2020 11:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579259629;
 bh=AhEzUdOBd1Cfe4VMqkzCjjTDzwt2IOEYHttmn6mMCm8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jTjFs3jlFGMHtxg/isiALAJ+BnLDoVvsvBLpP+fEuguVtXjoZ+LGjgcQNONH0fVBv
 g6M6B0F1u8nBcgbdQEtNayFVGeK3AeZgZSzIcHo0coP+JYqDwbNh8KvofBQA39po9u
 pGkDwzrcxW0U/pwqK2bbv8BZNPzZ0LYqfUchwmtI=
Date: Fri, 17 Jan 2020 11:13:44 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-b260f5e.cki?(arm-next)
Message-ID: <20200117111344.GC6144@willie-the-truck>
References: <cki.9F6EEFCFB1.I2MBV5DGSX@redhat.com>
 <1087562953.2535418.1579256657647.JavaMail.zimbra@redhat.com>
 <20200117103413.GA6144@willie-the-truck>
 <584b0c2e-bdc8-791f-cbc1-c27f3d6ed53d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <584b0c2e-bdc8-791f-cbc1-c27f3d6ed53d@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_031352_703741_CBCF5EC8 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianwen Ji <jiji@redhat.com>, Veronika Kabatova <vkabatov@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, catalin marinas <catalin.marinas@arm.com>,
 Yi Chen <yiche@redhat.com>, CKI Project <cki-project@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMTA6NTc6NDlBTSArMDAwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDIwMjAtMDEtMTcgMTA6MzQgYW0sIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gT24g
RnJpLCBKYW4gMTcsIDIwMjAgYXQgMDU6MjQ6MTdBTSAtMDUwMCwgVmVyb25pa2EgS2FiYXRvdmEg
d3JvdGU6Cj4gPiA+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPiA+ID4gPiBGcm9tOiAi
Q0tJIFByb2plY3QiIDxja2ktcHJvamVjdEByZWRoYXQuY29tPgo+ID4gPiA+IFRvOiB3aWxsQGtl
cm5lbC5vcmcsICJjYXRhbGluIG1hcmluYXMiIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4sIGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiA+IENjOiAiWWkgQ2hlbiIg
PHlpY2hlQHJlZGhhdC5jb20+LCAiSmlhbndlbiBKaSIgPGppamlAcmVkaGF0LmNvbT4sICJIYW5n
YmluIExpdSIgPGhhbGl1QHJlZGhhdC5jb20+LCAiWGl1bWVpIE11Igo+ID4gPiA+IDx4bXVAcmVk
aGF0LmNvbT4KPiA+ID4gPiBTZW50OiBGcmlkYXksIEphbnVhcnkgMTcsIDIwMjAgNDozNToyNyBB
TQo+ID4gPiA+IFN1YmplY3Q6IOKdjCBGQUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuNS4w
LXJjNi1iMjYwZjVlLmNraQkoYXJtLW5leHQpCj4gPiA+ID4gCj4gPiA+ID4gV2UgcmFuIGF1dG9t
YXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtlcm5lbCB0cmVlOgo+ID4g
PiA+IAo+ID4gPiA+ICAgICAgICAgS2VybmVsIHJlcG86Cj4gPiA+ID4gICAgICAgICBnaXQ6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4g
PiA+ID4gICAgICAgICAgICAgIENvbW1pdDogYjI2MGY1ZWI0ZTU3IC0gTWVyZ2UgYnJhbmNoICdm
b3ItbmV4dC9jb3JlJyBpbnRvCj4gPiA+ID4gICAgICAgICAgICAgIGZvci1rZXJuZWxjaQo+ID4g
PiA+IAo+ID4gPiA+IFRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJv
dmlkZWQgYmVsb3cuCj4gPiA+ID4gCj4gPiA+ID4gICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVE
IChzZWUgZGV0YWlscyBiZWxvdykKPiA+ID4gPiAgICAgICAgICAgICAgIE1lcmdlOiBPSwo+ID4g
PiA+ICAgICAgICAgICAgIENvbXBpbGU6IE9LCj4gPiA+ID4gICAgICAgICAgICAgICBUZXN0czog
RkFJTEVECj4gPiA+ID4gCj4gPiA+ID4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVz
LCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBoZXJlOgo+ID4gPiA+IAo+ID4g
PiA+ICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMzg3MjE5
Cj4gPiA+ID4gCj4gPiA+ID4gT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPiA+ID4g
PiAKPiA+ID4gPiAgICAgIGFhcmNoNjQ6Cj4gPiA+ID4gICAgICAg4p2MIE5ldHdvcmtpbmcgVURQ
OiBzb2NrZXQKPiA+ID4gPiAgICAgICDinYwgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMg
dHVubmVsCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBhZnRlciB5ZXN0ZXJkYXkncyBkaXNjdXNzaW9u
cyBJIHRob3VnaHQgSSdkIHBvaW50IGl0IG91dCBzcGVjaWZpY2FsbHkuCj4gPiA+IFRoZXNlIHRl
c3RzIGRpZCByZWFsbHkgcmVwb3J0IGEgZmFpbHVyZSBhbmQgdGhlIHJlc3VsdHMgYXJlIG5vdCBj
YXVzZWQKPiA+ID4gYnkgdGhlIGluZnJhIGlzc3VlIHdlIHdlcmUgdGFsa2luZyBhYm91dC4gSSdt
IHN1cmUgdGhlIHRlc3QgbWFpbnRhaW5lcnMKPiA+ID4gY2FuIGhlbHAgd2l0aCBmaWd1cmluZyBv
dXQgaWYgdGhpcyBpcyBzb21ldGhpbmcgdG8gYmUgY29uY2VybmVkIHdpdGguCj4gPiAKPiA+IFRo
YW5rcywgVmVyb25pa2EgLS0gSSB3YXMgYWJvdXQgdG8gbWFpbCB5b3UgdG8gYXNrISBXZSBxdWV1
ZWQgc29tZSBJUAo+ID4gY2hlY2tzdW0gY2hhbmdlcyB5ZXN0ZXJkYXksIHNvIEkgYmV0IHRoZXkn
cmUgdGhlIGN1bHByaXQsIHNpbmNlIHRoaXMgbG9va3MKPiA+IHRvIGJlIHJlbGF0ZWQgdG8gVURQ
IGNoZWNrc3VtbWluZy4KPiAKPiBVcmdoLi4uIGxldCBtZSBzZWUgaWYgSSBjYW4gcmVwcm9kdWNl
IHNvbWV0aGluZyBsb2NhbGx5IC0gSSBoYWQgaXBlcmYzCj4gcnVubmluZyBmaW5lIGluIGJvdGgg
ZGlyZWN0aW9ucyB3aXRoIHR4L3J4IG9mZmxvYWQgZGlzYWJsZWQsIGFuZCBteQo+IHVzZXJzcGFj
ZSB0ZXN0cyB3ZXJlIHNob3dpbmcgdGhlIG5ldyByb3V0aW5lIHByb2R1Y2UgdGhlIHNhbWUgc3Vt
IGFzIHRoZQo+IGdlbmVyaWMgdmVyc2lvbiBmb3IgdGhlIHNhbWUgYnVmZmVyLCBzbyBJIHdvdWxk
bid0IGhhdmUgZXhwZWN0ZWQgVURQIHRvCj4gYmVoYXZlIGFueSBkaWZmZXJlbnRseSwgYnV0IEkn
bGwgZGlnIGluIGFuZCBkb3VibGUtY2hlY2sgZXZlcnl0aGluZy4uLgoKSXQgY291bGQgZWFzaWx5
IGJlIG9uZSBvZiB0aGUgb3RoZXIgdGhpbmdzIEkgcXVldWVkIHllc3RlcmRheSwgYnV0IEkndmUK
cHVzaGVkIG91dCBhbiB1cGRhdGVkIGZvci1rZXJuZWxjaSBicmFuY2ggd2l0aCB5b3VyIHBhdGNo
IHJldmVydGVkIHNvIGtlZXAKeW91ciBVVEYtOCBleWVzIHBlZWxlZCB0byBzZWUgaWYgd2UgZ2V0
IGEgYmlnIGdyZWVuIHRpY2sgYmFjayBvciBub3QuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
