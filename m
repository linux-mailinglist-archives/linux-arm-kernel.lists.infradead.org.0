Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4B043663
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qis44mp4N4gIjgNZD+7aKx+mPLWNuoyJlWvFD6Xhic=; b=PQf+9yozbg0U1Q
	Lk5Zq6Y0itN4NbLOZQHqyxgv+ixtzf3s24ahDDrZpW4DXlO7fhyp09afqWXoPPSsoweU9aIPFP4X1
	SG03BsnHvjb7fqhH1JnSO/4RL2TGjuUH0YbJDK59HnWejIrrgf230hmOQ/Phc1ps2HwbOZ1vCYwHf
	xlQWC1TdF+RkvlxTC9qIafP1o/PeJRftctNpSyM9WCTNoG5I5b2EbE2mr8I5Sq02bOvmNjxaFWvOX
	dPZ2ONIzmtcCLqBkue5AHWTSOCvAg7z448gziRMZMLKSq34ywDiyR+5kpJ6OMzcjtiSQTRCahz7Z6
	97UF/LGUxkqdCCM9Gnsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPgs-0000lV-N2; Thu, 13 Jun 2019 13:22:54 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPge-0000l4-PN
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:22:42 +0000
Received: by mail-qk1-x742.google.com with SMTP id c11so12680237qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RvQ7s6KqQFboNBrXACowYJehaEqJCBGaI4+3OVeMERI=;
 b=bBNgno4o9GAsUM3oGJioC5sI7aRIso2DiB+okxiU8rjGN4HJ0v1gxCNMi7udkAGL6f
 oky91oVZh7z6knKRvgJl9IikO9fYnZb3jWcg1ZNvsauYAOjk0zxqs7/D+G+mWwOQwvi5
 XAEFmebepC8uobYYn6F6j3a1ccrCPMqRs6NImFil6YZeSfTI0Yunqha+8AmBT4bPOMrq
 uta0iARaSykyvjwOQfIWg6pltLH3IEX2UrTqThwQMVGM6Fbs4UncTG6BzJSoXCLm0n7w
 kk42c1Hsa+EHGKm3zEtga8Aae3Cdyj5QWiVaxE58eV4dWzuC7FmEvF7H7iUOL7yA11ah
 k7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RvQ7s6KqQFboNBrXACowYJehaEqJCBGaI4+3OVeMERI=;
 b=pAIUwKgyY2V0kleRxX3GRC7HU/xwucmp7qCEHikDLnql7sisHjSQMfe7/ECmtLzJ82
 hQcW72cYrePSZUqhvJYt+1LynPTbP/8AQsdFi6FRtR7BoweeeFR3px5VQfwoIq+SwzS1
 nHeFHrjcutboSgmNxFtcbgeuIeiCY9THG8AhYKfM33AuD3NFUvmOix+qFWAtN0BmLTca
 nvwtNB4AyPn+Jzwl7JLdShy6r+l1K3mcoCJnV2/O8MIYMFGUoKfSZdnKBbRmvHlQ2zOF
 V85EPXc2/p/HOPX0Dv2Kxk+yEuxxQ8fOmLLITboiwI/r4mu6Hjrl2U/3iYyo48vRRidI
 3z4A==
X-Gm-Message-State: APjAAAXTsN1Wadqas60UhlfAVoXUBgpoH+fLQHzmQ8jnEDu4PmBFSg6x
 SQxz92+He6etwmgJWf/irV74jA==
X-Google-Smtp-Source: APXvYqxBFU+2n7NeM2FTrwHp7MWYv4DOOcIQv0wH6sniaZCois+k70ecIkcp7EZJ319MIspcW/P2rg==
X-Received: by 2002:a37:9885:: with SMTP id
 a127mr50858690qke.230.1560432158880; 
 Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 77sm1564782qkd.59.2019.06.13.06.22.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
Message-ID: <1560432156.5154.11.camel@lca.pw>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
From: Qian Cai <cai@lca.pw>
To: Mike Rapoport <rppt@linux.ibm.com>, Mark Rutland <mark.rutland@arm.com>
Date: Thu, 13 Jun 2019 09:22:36 -0400
In-Reply-To: <20190613121100.GB25164@rapoport-lnx>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190613121100.GB25164@rapoport-lnx>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062240_850457_97347A58 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 vdavydov.dev@gmail.com, hannes@cmpxchg.org, cgroups@vger.kernel.org,
 akpm@linux-foundation.org, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA2LTEzIGF0IDE1OjExICswMzAwLCBNaWtlIFJhcG9wb3J0IHdyb3RlOgo+
IFRoZSBsb2cgUWlhbiBDYWkgcG9zdGVkIGF0IFsxXSBhbmQgcGFydGlhbGx5IGNpdGVkIGJlbG93
IGNvbmZpcm1zIHRoYXQgdGhlCj4gZmFpbHVyZSBoYXBwZW5zIHdoZW4gKnVzZXIqIFBHRHMgYXJl
IGFsbG9jYXRlZCBhbmQgdGhlIGFkZGl0aW9uIG9mCj4gX19HRlBfQUNDT1VOVCB0byBnZnAgZmxh
Z3MgdXNlZCBieSBwZ2RfYWxsb2MoKSBvbmx5IHVuY292ZXJlZCBhbm90aGVyCj4gaXNzdWUuCj4g
Cj4gSSdtIHN0aWxsIGZhaWxpbmcgdG8gcmVwcm9kdWNlIGl0IHdpdGggcWVtdSBhbmQgSSdtIG5v
dCByZWFsbHkgZmFtaWxpYXIKPiB3aXRoIHNsdWIvbWVtY2cgY29kZSB0byBzYXkgYW55dGhpbmcg
c21hcnQgYWJvdXQgaXQuIFdpbGwga2VlcCBsb29raW5nLgo+IAo+IE5vdGUsIHRoYXQgYXMgZmFp
bHVyZXMgc3RhcnQgd2F5IGFmdGVyIGVmaV92aXJ0bWFwX2luaXQoKSB0aGF0IGFsbG9jYXRlcyBh
Cj4gUEdEIGZvciBlZmlfbW0sIHRoZXJlIGFyZSBubyByZWFsIGZpeGVzIHJlcXVpcmVkIGZvciB0
aGUgb3JpZ2luYWwgc2VyaWVzLAo+IGV4Y2VwdCB0aGF0IHRoZSBjaGVjayBmb3IgbW0gPT0gJmlu
aXRfbW0gSSBjb3BpZWQgZm9yIHNvbWUgcmVhc29uIGZyb20KPiBwb3dlcnBjIGlzIGJvZ3VzIGFu
ZCBjYW4gYmUgcmVtb3ZlZC4KClllcywgdGhlcmUgaXMgbW9yZSBwbGFjZXMgYXJlIG5vdCBoYXBw
eSB3aXRoIF9fR0ZQX0FDQ09VTlQgb3RoZXIgdGhhbiBlZmlfbW0uCkZvciBleGFtcGxlLAoKW8Kg
wqAxMzIuNzg2ODQyXVsgVDE1MDFdIGtvYmplY3RfYWRkX2ludGVybmFsIGZhaWxlZCBmb3IgcGdk
X2NhY2hlKDQ5OnN5c3RlbWQtCnVkZXZkLnNlcnZpY2UpIChlcnJvcjogLTIgcGFyZW50OiBjZ3Jv
dXApClvCoMKgMTMyLjc5NTU4OV1bIFQxODg5XSBDUFU6IDkgUElEOiAxODg5IENvbW06IHN5c3Rl
bWQtdWRldmQgVGFpbnRlZDoKR8KgwqDCoMKgwqDCoMKgwqBXwqDCoMKgwqDCoMKgwqDCoMKgNS4y
LjAtcmM0LW5leHQtMjAxOTA2MTMrICM4ClvCoMKgMTMyLjgwNzM1Nl1bIFQxODg5XSBIYXJkd2Fy
ZSBuYW1lOiBIUEUgQXBvbGxvCjcwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvQzAxX0FQQUNI
RV9NQsKgwqDCoMKgwqDCoMKgwqDCoCwgQklPUyBMNTBfNS4xM18xLjAuOSAwMy8wMS8yMDE5ClvC
oMKgMTMyLjgxNzg3Ml1bIFQxODg5XSBDYWxsIHRyYWNlOgpbwqDCoDEzMi44MjEwMTddWyBUMTg4
OV3CoMKgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MjY4ClvCoMKgMTMyLjgyNTM3Ml1bIFQxODg5XcKg
wqBzaG93X3N0YWNrKzB4MjAvMHgyYwpbwqDCoDEzMi44MjkzODBdWyBUMTg4OV3CoMKgZHVtcF9z
dGFjaysweGI0LzB4MTA4ClvCoMKgMTMyLjgzMzQ3NV1bIFQxODg5XcKgwqBwZ2RfYWxsb2MrMHgz
NC8weDVjClvCoMKgMTMyLjgzNzM5Nl1bIFQxODg5XcKgwqBtbV9pbml0KzB4MjdjLzB4MzJjClvC
oMKgMTMyLjg0MTMxNV1bIFQxODg5XcKgwqBkdXBfbW0rMHg4NC8weDdiNApbwqDCoDEzMi44NDUw
NjFdWyBUMTg4OV3CoMKgY29weV9wcm9jZXNzKzB4ZjIwLzB4MjRjYwpbwqDCoDEzMi44NDk1MDBd
WyBUMTg4OV3CoMKgX2RvX2ZvcmsrMHhhNC8weDY2YwpbwqDCoDEzMi44NTM0MjBdWyBUMTg4OV3C
oMKgX19hcm02NF9zeXNfY2xvbmUrMHgxMTQvMHgxYjQKW8KgwqAxMzIuODU4MjA4XVsgVDE4ODld
wqDCoGVsMF9zdmNfaGFuZGxlcisweDE5OC8weDI2MApbwqDCoDEzMi44NjI4MjFdWyBUMTg4OV3C
oMKgZWwwX3N2YysweDgvMHhjCgo+IAo+IEkgc3VyZWx5IGNhbiBhZGQgcGdkX2FsbG9jX2tlcm5l
bCgpIHRvIGJlIHVzZWQgYnkgdGhlIEVGSSBjb2RlIHRvIG1ha2Ugc3VyZQo+IHdlIHdvbid0IHJ1
biBpbnRvIGlzc3VlcyB3aXRoIG1lbWNnIGluIHRoZSBmdXR1cmUuCj4gCj4gW8KgwqDCoDgyLjEy
NTk2Nl0gRnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTogMjg2NzJLCj4gW8KgwqDCoDg3Ljk0
MDM2NV0gQ2hlY2tlZCBXK1ggbWFwcGluZ3M6IHBhc3NlZCwgbm8gVytYIHBhZ2VzIGZvdW5kCj4g
W8KgwqDCoDg3Ljk0Njc2OV0gUnVuIC9pbml0IGFzIGluaXQgcHJvY2Vzcwo+IFvCoMKgwqA4OC4w
NDAwNDBdIHN5c3RlbWRbMV06IFN5c3RlbSB0aW1lIGJlZm9yZSBidWlsZCB0aW1lLCBhZHZhbmNp
bmcgY2xvY2suCj4gW8KgwqDCoDg4LjA1NDU5M10gc3lzdGVtZFsxXTogRmFpbGVkIHRvIGluc2Vy
dCBtb2R1bGUgJ2F1dG9mczQnOiBObyBzdWNoIGZpbGUgb3IKPiBkaXJlY3RvcnkKPiBbwqDCoMKg
ODguMzc0MTI5XSBtb2Rwcm9iZSAoMTcyNikgdXNlZCBncmVhdGVzdCBzdGFjayBkZXB0aDogMjg0
NjQgYnl0ZXMgbGVmdAo+IFvCoMKgwqA4OC40NzAxMDhdIHN5c3RlbWRbMV06IHN5c3RlbWQgMjM5
IHJ1bm5pbmcgaW4gc3lzdGVtIG1vZGUuICgrUEFNICtBVURJVAo+ICtTRUxJTlVYICtJTUEgLUFQ
UEFSTU9SICtTTUFDSyArU1lTVklOSVQgK1VUTVAgK0xJQkNSWVBUU0VUVVAgK0dDUllQVAo+ICtH
TlVUTFMgK0FDTCArWFogK0xaNCArU0VDQ09NUCArQkxLSUQgK0VMRlVUSUxTICtLTU9EICtJRE4y
IC1JRE4gK1BDUkUyCj4gZGVmYXVsdC1oaWVyYXJjaHk9bGVnYWN5KQo+IFvCoMKgwqA4OC40OTgz
OThdIHN5c3RlbWRbMV06IERldGVjdGVkIGFyY2hpdGVjdHVyZSBhcm02NC4KPiBbwqDCoMKgODgu
NTA2NTE3XSBzeXN0ZW1kWzFdOiBSdW5uaW5nIGluIGluaXRpYWwgUkFNIGRpc2suCj4gW8KgwqDC
oDg5LjYyMTk5NV0gbWtkaXIgKDE3MzApIHVzZWQgZ3JlYXRlc3Qgc3RhY2sgZGVwdGg6IDI3ODcy
IGJ5dGVzIGxlZnQKPiBbwqDCoMKgOTAuMjIyNjU4XSByYW5kb206IHN5c3RlbWQ6IHVuaW5pdGlh
bGl6ZWQgdXJhbmRvbSByZWFkICgxNiBieXRlcyByZWFkKQo+IFvCoMKgwqA5MC4yMzAwNzJdIHN5
c3RlbWRbMV06IFJlYWNoZWQgdGFyZ2V0IFN3YXAuCj4gW8KgwqDCoDkwLjI0MDIwNV0gcmFuZG9t
OiBzeXN0ZW1kOiB1bmluaXRpYWxpemVkIHVyYW5kb20gcmVhZCAoMTYgYnl0ZXMgcmVhZCkKPiBb
wqDCoMKgOTAuMjUxMDg4XSBzeXN0ZW1kWzFdOiBSZWFjaGVkIHRhcmdldCBUaW1lcnMuCj4gW8Kg
wqDCoDkwLjI2MTMwM10gcmFuZG9tOiBzeXN0ZW1kOiB1bmluaXRpYWxpemVkIHVyYW5kb20gcmVh
ZCAoMTYgYnl0ZXMgcmVhZCkKPiBbwqDCoMKgOTAuMjcxMjA5XSBzeXN0ZW1kWzFdOiBMaXN0ZW5p
bmcgb24gdWRldiBDb250cm9sIFNvY2tldC4KPiBbwqDCoMKgOTAuMjgzMjM4XSBzeXN0ZW1kWzFd
OiBSZWFjaGVkIHRhcmdldCBMb2NhbCBGaWxlIFN5c3RlbXMuCj4gW8KgwqDCoDkwLjI5NjIzMl0g
c3lzdGVtZFsxXTogUmVhY2hlZCB0YXJnZXQgU2xpY2VzLgo+IFvCoMKgwqA5MC4zMDcyMzldIHN5
c3RlbWRbMV06IExpc3RlbmluZyBvbiB1ZGV2IEtlcm5lbCBTb2NrZXQuCj4gW8KgwqDCoDkwLjYw
ODU5N10ga29iamVjdF9hZGRfaW50ZXJuYWwgZmFpbGVkIGZvciBwZ2RfY2FjaGUoMTM6aW5pdC5z
Y29wZSkKPiAoZXJyb3I6IC0yIHBhcmVudDogY2dyb3VwKQo+IFvCoMKgwqA5MC42NzgwMDddIGtv
YmplY3RfYWRkX2ludGVybmFsIGZhaWxlZCBmb3IgcGdkX2NhY2hlKDEzOmluaXQuc2NvcGUpKGVy
cm9yOgo+IC0yIHBhcmVudDogY2dyb3VwKQo+IFvCoMKgwqA5MC43MTMyNjBdIGtvYmplY3RfYWRk
X2ludGVybmFsIGZhaWxlZCBmb3IgcGdkX2NhY2hlKDIxOnN5c3RlbWQtdG1wZmlsZXMtCj4gc2V0
dXAuc2VydmljZSkgKGVycm9yOiAtMiBwYXJlbnQ6IGNncm91cCkKPiBbwqDCoMKgOTAuODIwMDEy
XSBzeXN0ZW1kLXRtcGZpbGUgKDE3NTkpIHVzZWQgZ3JlYXRlc3Qgc3RhY2sgZGVwdGg6IDI3MTg0
IGJ5dGVzCj4gbGVmdAo+IFvCoMKgwqA5MC44NjE5NDJdIGtvYmplY3RfYWRkX2ludGVybmFsIGZh
aWxlZCBmb3IgcGdkX2NhY2hlKDEzOmluaXQuc2NvcGUpIGVycm9yOgo+IC0yIHBhcmVudDogY2dy
b3VwKQo+IMKgCj4gPiBUaGFua3MsCj4gPiBNYXJrLgo+ID4gCj4gCj4gWzFdIGh0dHBzOi8vY2Fp
bGNhLmdpdGh1Yi5pby9maWxlcy9kbWVzZy50eHQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
