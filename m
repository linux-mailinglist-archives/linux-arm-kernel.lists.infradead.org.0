Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04869B540
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 19:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0us0CeD0tgdvOjmzG8NAKq5GTR+fL++Eg2DsoCsaYk=; b=d8VwXHnLqAehCY
	vdTkNZNcXdJ7uS7GJmyqlNkf87qE5u/2wUnjAOfD52w5e2HCpR9ArPoU4kFdGJGU8gCQQCAguZjAx
	NyeejCAlwWpQig/oNw9lSYNJMYwHIhzWy7xuu2ngMJYPtX61hDz9LvFAaN/GgIw5jUyJ4vh/RSisJ
	QC/q292pmVOaD+IUAyXbqxAXvw07xg/lCKBfNtROI8Cq8qiRQVS04Y9MI6zKC226VbFsCR3SuVY5d
	cGDwiMsvels4cZNznYS2ZqaPIkg0M7tdIS8Icf338r9b2c0/3rxb+8x1tO/PXkI0OIjvw4UrMxDn5
	5/gBjs+B0fnC2zKLI31g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1DAz-0001wr-R5; Fri, 23 Aug 2019 17:16:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1DAs-0001vd-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 17:16:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so6833492pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 10:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m/DpmKdoj0HbvB1qyNNmkuLxnsG1UWxBDMu6haWmyfk=;
 b=I2Manzko/wGlM7GadUNr7MneDIkFgtNuaQWW3gusvAFqTyc8UVSsEi3dDb9uISZ2ro
 7may81ewFA6iYVo9Z18pBkn4Oz93u3RfOKzFDOip3vm+2DLwTnfXcs/joHVNcml8En9b
 zdO9R63vAW9+Pwl+1DpVnp8qtBcA9DX4tyyjs3ofuYlA8isRTR4ddKXSkTstLl6QA+qi
 l3EStFuqjtYP4+yXgxc0vrW8hnCjFApot2SnqF7I0WWb2VdFSEGCNTRsSvMlQY1lzHpD
 MojsrcbWPLdXgagxhii2RojbgeHI7+C721+ZoHS7S1Tec8PtPKa3xsOOPtKVca5ysW7s
 ygnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m/DpmKdoj0HbvB1qyNNmkuLxnsG1UWxBDMu6haWmyfk=;
 b=uSII+0GCco+lbRWzBiseelhaEQB4CFGEWB1wHe8GHW07mTPiWuZkVh6aYi+Lw4yTes
 S+nt2+lVbAz9Gjnkuuv7Eyp7R4VfxhpJvMDs/zKAozJue8p1q1UCQhQtf4ajYdOG0dPm
 NXazWdM0qmQCjVmxjJILzDj15Zv2x6PuHqbeanH2njnCS6/GwN6+a7AqBtfOq+eGsJcq
 jbbOZMEhTQepqM7c/eXwbsGhphKb+Pq+qm7sl91ZXE4JGV4Ktv+jftjhrPGISr5AXIar
 ZH8brXAQ0oq2iDkiIaZHMdIe5AuZwLp9AFK4MrSC/n8R339EWN4G8qhhCKjC+csV7FzR
 pfcQ==
X-Gm-Message-State: APjAAAVQlGOUrebBvr6H52dmEbxSyah9rQXHVwX/JWOt4AlT1P0nEIss
 0qT0bktib/SP6aqBIL4NihT9brIr5zy0rXIYtmrO9A==
X-Google-Smtp-Source: APXvYqxT7RxeOMCTj3qivid/BR4Ce4YdmJ0i6gdLDgbf88ZUnnm2E6y14200bmYlmMGL1hZWLgGhIoRJAPtDpVNlNDU=
X-Received: by 2002:a17:90a:6581:: with SMTP id
 k1mr6320376pjj.47.1566580586731; 
 Fri, 23 Aug 2019 10:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <0999c80cd639b78ae27c0674069d552833227564.1561386715.git.andreyknvl@google.com>
 <6af3f619-4356-2f67-ed76-92beceb1e0a0@arm.com>
In-Reply-To: <6af3f619-4356-2f67-ed76-92beceb1e0a0@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 23 Aug 2019 19:16:15 +0200
Message-ID: <CAAeHK+yhbUcuLhoetjGUbqM4j9fX84hbwmxzNPF+e1zXj6nKNw@mail.gmail.com>
Subject: Re: [PATCH v18 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Cristian Marussi <cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_101630_782216_74FAC9D4 
X-CRM114-Status: GOOD (  28.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMzo1NiBQTSBDcmlzdGlhbiBNYXJ1c3NpCjxjcmlzdGlh
bi5tYXJ1c3NpQGFybS5jb20+IHdyb3RlOgo+Cj4gSGkgQW5kcmV5Cj4KPiBPbiAyNC8wNi8yMDE5
IDE1OjMzLCBBbmRyZXkgS29ub3ZhbG92IHdyb3RlOgo+ID4gVGhpcyBwYXRjaCBpcyBhIHBhcnQg
b2YgYSBzZXJpZXMgdGhhdCBleHRlbmRzIGtlcm5lbCBBQkkgdG8gYWxsb3cgdG8gcGFzcwo+ID4g
dGFnZ2VkIHVzZXIgcG9pbnRlcnMgKHdpdGggdGhlIHRvcCBieXRlIHNldCB0byBzb21ldGhpbmcg
ZWxzZSBvdGhlciB0aGFuCj4gPiAweDAwKSBhcyBzeXNjYWxsIGFyZ3VtZW50cy4KPiA+Cj4gPiBU
aGlzIHBhdGNoIGFkZHMgYSBzaW1wbGUgdGVzdCwgdGhhdCBjYWxscyB0aGUgdW5hbWUgc3lzY2Fs
bCB3aXRoIGEKPiA+IHRhZ2dlZCB1c2VyIHBvaW50ZXIgYXMgYW4gYXJndW1lbnQuIFdpdGhvdXQg
dGhlIGtlcm5lbCBhY2NlcHRpbmcgdGFnZ2VkCj4gPiB1c2VyIHBvaW50ZXJzIHRoZSB0ZXN0IGZh
aWxzIHdpdGggRUZBVUxULgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHJleSBLb25vdmFsb3Yg
PGFuZHJleWtudmxAZ29vZ2xlLmNvbT4KPiA+IC0tLQo+ID4gIHRvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2FybTY0Ly5naXRpZ25vcmUgICAgICB8ICAxICsKPiA+ICB0b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9hcm02NC9NYWtlZmlsZSAgICAgICAgfCAxMSArKysrKysrCj4gPiAgLi4uL3Rlc3Rpbmcv
c2VsZnRlc3RzL2FybTY0L3J1bl90YWdzX3Rlc3Quc2ggIHwgMTIgKysrKysrKysKPiA+ICB0b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC90YWdzX3Rlc3QuYyAgICAgfCAyOSArKysrKysrKysr
KysrKysrKysrCj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0Ly5naXRpZ25vcmUK
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvTWFr
ZWZpbGUKPiA+ICBjcmVhdGUgbW9kZSAxMDA3NTUgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJt
NjQvcnVuX3RhZ3NfdGVzdC5zaAo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9hcm02NC90YWdzX3Rlc3QuYwo+Cj4gQWZ0ZXIgYnVpbGRpbmcgYSBmcmVzaCBL
ZXJuZWwgZnJvbSBhcm02NC9mb3ItbmV4dC1jb3JlIGZyb20gc2NyYXRjaCBhdDoKPgo+IGNvbW1p
dCAyMzlhYjY1OGJlYTNiMzg3NDI0NTAxZTdjNDE2NjQwZDY3NTJkYzBjCj4gTWVyZ2U6IDZiZmEz
MTM0YmQzYSA0MmQwMzhjNGZiMDAgMTI0M2NiNmE2NzZmIGQ1NWM1ZjI4YWZhZiBkMDZmYTVhMTE4
ZjEgMzRiNTU2MGRiNDBkCj4gQXV0aG9yOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+
IERhdGU6ICAgVGh1IEF1ZyAyMiAxODoyMzo1MyAyMDE5ICswMTAwCj4KPiAgICAgTWVyZ2UgYnJh
bmNoZXMgJ2Zvci1uZXh0L2Vycm9yLWluamVjdGlvbicsICdmb3ItbmV4dC90YmknLCAnZm9yLW5l
eHQvcHNjaS1jcHVpZGxlJywgJ2Zvci1uZXh0L2NwdS10b3BvbG9neScgYW5kICdmb3ItbmV4dC81
Mi1iaXQta3ZhJyBpbnRvIGZvci1uZXh0L2NvcmUKPgo+Cj4gS1NGVCBhcm02NCB0ZXN0cyBidWls
ZCBpcyBicm9rZW4gZm9yIG1lLCBib3RoIHNldHRpbmcgb3Igbm90IEtCVUlMRF9PVVRQVVQ9Cj4K
PiAxMzozMCAkIG1ha2UgVEFSR0VUUz1hcm02NCBrc2VsZnRlc3QtY2xlYW4KPiBtYWtlWzFdOiBF
bnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xp
bnV4Jwo+IHJtIC1mIC1yIC9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4
Ly9rc2VsZnRlc3QvYXJtNjQvdGFnc190ZXN0Cj4gbWFrZVsxXTogTGVhdmluZyBkaXJlY3Rvcnkg
Jy9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4Jwo+Cj4g4pyUIH4vQVJN
L2Rldi9zcmMvcGRzdy9saW51eCBbYXJtNjRfZm9yX25leHRfY29yZXzigKY44pqRIDIzXQo+Cj4g
MTM6MzAgJCBtYWtlIFRBUkdFVFM9YXJtNjQga3NlbGZ0ZXN0Cj4gbWFrZVsxXTogRW50ZXJpbmcg
ZGlyZWN0b3J5ICcvaG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L291dF9saW51eCcKPiBh
cmNoL2FybTY0L01ha2VmaWxlOjU2OiBDUk9TU19DT01QSUxFX0NPTVBBVCBub3QgZGVmaW5lZCBv
ciBlbXB0eSwgdGhlIGNvbXBhdCB2RFNPIHdpbGwgbm90IGJlIGJ1aWx0Cj4gbWFrZSAtLW5vLWJ1
aWx0aW4tcnVsZXMgSU5TVEFMTF9IRFJfUEFUSD0kQlVJTEQvdXNyIFwKPiAgICAgICAgIEFSQ0g9
YXJtNjQgLUMgLi4vLi4vLi4gaGVhZGVyc19pbnN0YWxsCj4gICBIT1NUQ0MgIHNjcmlwdHMvYmFz
aWMvZml4ZGVwCj4gICBIT1NUQ0MgIHNjcmlwdHMvdW5pZmRlZgo+IC4uLgo+IC4uLgo+ICAgSERS
SU5TVCB1c3IvaW5jbHVkZS9hc20vbXNnYnVmLmgKPiAgIEhEUklOU1QgdXNyL2luY2x1ZGUvYXNt
L3NobWJ1Zi5oCj4gICBJTlNUQUxMIC9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0
X2xpbnV4Ly9rc2VsZnRlc3QvdXNyL2luY2x1ZGUKPiAvb3B0L3Rvb2xjaGFpbnMvZ2NjLWFybS04
LjMtMjAxOS4wMy14ODZfNjQtYWFyY2g2NC1saW51eC1nbnUvYmluL2FhcmNoNjQtbGludXgtZ251
LWdjYyAgICAgdGFnc190ZXN0LmMgIC1vIC9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cv
b3V0X2xpbnV4Ly9rc2VsZnRlc3QvYXJtNjQvdGFnc190ZXN0Cj4gdGFnc190ZXN0LmM6IEluIGZ1
bmN0aW9uIOKAmG1haW7igJk6Cj4gdGFnc190ZXN0LmM6MjE6MTI6IGVycm9yOiDigJhQUl9TRVRf
VEFHR0VEX0FERFJfQ1RSTOKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlv
bik7IGRpZCB5b3UgbWVhbiDigJhQUl9HRVRfVElEX0FERFJFU1PigJk/Cj4gICBpZiAocHJjdGwo
UFJfU0VUX1RBR0dFRF9BRERSX0NUUkwsIFBSX1RBR0dFRF9BRERSX0VOQUJMRSwgMCwgMCwgMCkg
PT0gMCkKPiAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ICAgICAgICAgICAg
IFBSX0dFVF9USURfQUREUkVTUwo+IHRhZ3NfdGVzdC5jOjIxOjEyOiBub3RlOiBlYWNoIHVuZGVj
bGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24g
aXQgYXBwZWFycyBpbgo+IHRhZ3NfdGVzdC5jOjIxOjM3OiBlcnJvcjog4oCYUFJfVEFHR0VEX0FE
RFJfRU5BQkxF4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlk
IHlvdSBtZWFuIOKAmFBSX0dFVF9EVU1QQUJMReKAmT8KPiAgIGlmIChwcmN0bChQUl9TRVRfVEFH
R0VEX0FERFJfQ1RSTCwgUFJfVEFHR0VEX0FERFJfRU5BQkxFLCAwLCAwLCAwKSA9PSAwKQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn4K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFJfR0VUX0RVTVBBQkxFCj4g
Li4vbGliLm1rOjEzODogcmVjaXBlIGZvciB0YXJnZXQgJy9ob21lL2NyaW1hcjAxL0FSTS9kZXYv
c3JjL3Bkc3cvb3V0X2xpbnV4Ly9rc2VsZnRlc3QvYXJtNjQvdGFnc190ZXN0JyBmYWlsZWQKPiBt
YWtlWzNdOiAqKiogWy9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4Ly9r
c2VsZnRlc3QvYXJtNjQvdGFnc190ZXN0XSBFcnJvciAxCj4gTWFrZWZpbGU6MTM2OiByZWNpcGUg
Zm9yIHRhcmdldCAnYWxsJyBmYWlsZWQKPiBtYWtlWzJdOiAqKiogW2FsbF0gRXJyb3IgMgo+IC9o
b21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvbGludXgvTWFrZWZpbGU6MTIzNzogcmVjaXBl
IGZvciB0YXJnZXQgJ2tzZWxmdGVzdCcgZmFpbGVkCj4gbWFrZVsxXTogKioqIFtrc2VsZnRlc3Rd
IEVycm9yIDIKPiBtYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvY3JpbWFyMDEvQVJN
L2Rldi9zcmMvcGRzdy9vdXRfbGludXgnCj4gTWFrZWZpbGU6MTc5OiByZWNpcGUgZm9yIHRhcmdl
dCAnc3ViLW1ha2UnIGZhaWxlZAo+IG1ha2U6ICoqKiBbc3ViLW1ha2VdIEVycm9yIDIKPgo+IERl
c3BpdGUgc2VlaW5nIEtTRlQgaW5zdGFsbGluZyBLZXJuZWwgSGVhZGVycywgdGhleSBjYW5ub3Qg
YmUgZm91bmQuCj4KPiBGaXhpbmcgdGhpcyBwYXRjaCBsaWtlIHRoaXMgbWFrZSBpdCB3b3JrIGZv
ciBtZToKPgo+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9NYWtl
ZmlsZSBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2VmaWxlCj4gaW5kZXggYTYx
YjJlNzQzZTk5Li5mOWY3OWZiMjcyZjAgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYXJtNjQvTWFrZWZpbGUKPiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02
NC9NYWtlZmlsZQo+IEBAIC00LDYgKzQsNyBAQAo+ICBBUkNIID89ICQoc2hlbGwgdW5hbWUgLW0g
Mj4vZGV2L251bGwgfHwgZWNobyBub3QpCj4KPiAgaWZuZXEgKCwkKGZpbHRlciAkKEFSQ0gpLGFh
cmNoNjQgYXJtNjQpKQo+ICtDRkxBR1MgKz0gLUkuLi8uLi8uLi8uLi91c3IvaW5jbHVkZS8KPiAg
VEVTVF9HRU5fUFJPR1MgOj0gdGFnc190ZXN0Cj4gIFRFU1RfUFJPR1MgOj0gcnVuX3RhZ3NfdGVz
dC5zaAo+ICBlbmRpZgo+Cj4gYnV0IGlzIG5vdCByZWFsbHkgYSBwcm9wZXIgZml4IHNpbmNlIGl0
IGRvZXMgTk9UIGFjY291bnQgZm9yIGNhc2UgaW4gd2hpY2ggeW91IGhhdmUKPiBpbnN0YWxsZWQg
dGhlIEtlcm5lbCBIZWFkZXJzIGluIGEgbm9uIHN0YW5kYXJkIGxvY2F0aW9uIGxpa2Ugd2hlbiB5
b3UgdXNlIEtCVUlMRF9PVVRQVVQuCj4KPiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nID8KCkhtLCBQ
Ul9TRVRfVEFHR0VEX0FERFJfQ1RSTCBpcyBkZWZpbmVkIGluIGluY2x1ZGUvdWFwaS9saW51eC9w
cmN0bC5oLAphbmQgdGhlIHRlc3QgaGFzICNpbmNsdWRlIDxzeXMvcHJjdGwuaD4gc28gYXMgbG9u
ZyBhcyB5b3UndmUgdXBkYXRlZAp5b3VyIGtlcm5lbCBoZWFkZXJzIHRoaXMgc2hvdWxkIHdvcmsu
CgooSSdtIE9PTyBuZXh0IHdlZWssIEknbGwgc2VlIGlmIEkgY2FuIHJlcHJvZHVjZSB0aGlzIG9u
Y2UgSSdtIGJhY2spLgoKCgo+Cj4gVGhhbmtzCj4KPiBDcmlzdGlhbgo+Cj4gPgo+ID4gZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0Ly5naXRpZ25vcmUgYi90b29scy90
ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC8uZ2l0aWdub3JlCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5lOGZhZThkNjFlZDYKPiA+IC0tLSAvZGV2L251bGwK
PiA+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0Ly5naXRpZ25vcmUKPiA+IEBA
IC0wLDAgKzEgQEAKPiA+ICt0YWdzX3Rlc3QKPiA+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9hcm02NC9NYWtlZmlsZSBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0
L01ha2VmaWxlCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAw
Li5hNjFiMmU3NDNlOTkKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2FybTY0L01ha2VmaWxlCj4gPiBAQCAtMCwwICsxLDExIEBACj4gPiArIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ID4gKwo+ID4gKyMgQVJDSCBjYW4gYmUgb3Zl
cnJpZGRlbiBieSB0aGUgdXNlciBmb3IgY3Jvc3MgY29tcGlsaW5nCj4gPiArQVJDSCA/PSAkKHNo
ZWxsIHVuYW1lIC1tIDI+L2Rldi9udWxsIHx8IGVjaG8gbm90KQo+ID4gKwo+ID4gK2lmbmVxICgs
JChmaWx0ZXIgJChBUkNIKSxhYXJjaDY0IGFybTY0KSkKPiA+ICtURVNUX0dFTl9QUk9HUyA6PSB0
YWdzX3Rlc3QKPiA+ICtURVNUX1BST0dTIDo9IHJ1bl90YWdzX3Rlc3Quc2gKPiA+ICtlbmRpZgo+
ID4gKwo+ID4gK2luY2x1ZGUgLi4vbGliLm1rCj4gPiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYXJtNjQvcnVuX3RhZ3NfdGVzdC5zaCBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2FybTY0L3J1bl90YWdzX3Rlc3Quc2gKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNzU1Cj4gPiBp
bmRleCAwMDAwMDAwMDAwMDAuLjc0NWYxMTM3OTkzMAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysr
IGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvcnVuX3RhZ3NfdGVzdC5zaAo+ID4gQEAg
LTAsMCArMSwxMiBAQAo+ID4gKyMhL2Jpbi9zaAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKPiA+ICsKPiA+ICtlY2hvICItLS0tLS0tLS0tLS0tLS0tLS0tLSIKPiA+ICtl
Y2hvICJydW5uaW5nIHRhZ3MgdGVzdCIKPiA+ICtlY2hvICItLS0tLS0tLS0tLS0tLS0tLS0tLSIK
PiA+ICsuL3RhZ3NfdGVzdAo+ID4gK2lmIFsgJD8gLW5lIDAgXTsgdGhlbgo+ID4gKyAgICAgZWNo
byAiW0ZBSUxdIgo+ID4gK2Vsc2UKPiA+ICsgICAgIGVjaG8gIltQQVNTXSIKPiA+ICtmaQo+ID4g
ZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L3RhZ3NfdGVzdC5jIGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvdGFnc190ZXN0LmMKPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjIyYTFiMjY2ZTM3Mwo+ID4gLS0tIC9k
ZXYvbnVsbAo+ID4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvdGFnc190ZXN0
LmMKPiA+IEBAIC0wLDAgKzEsMjkgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMAo+ID4gKwo+ID4gKyNpbmNsdWRlIDxzdGRpby5oPgo+ID4gKyNpbmNsdWRlIDxzdGRs
aWIuaD4KPiA+ICsjaW5jbHVkZSA8dW5pc3RkLmg+Cj4gPiArI2luY2x1ZGUgPHN0ZGludC5oPgo+
ID4gKyNpbmNsdWRlIDxzeXMvcHJjdGwuaD4KPiA+ICsjaW5jbHVkZSA8c3lzL3V0c25hbWUuaD4K
PiA+ICsKPiA+ICsjZGVmaW5lIFNISUZUX1RBRyh0YWcpICAgICAgICAgICAgICAgKCh1aW50NjRf
dCkodGFnKSA8PCA1NikKPiA+ICsjZGVmaW5lIFNFVF9UQUcocHRyLCB0YWcpICAgICgoKHVpbnQ2
NF90KShwdHIpICYgflNISUZUX1RBRygweGZmKSkgfCBcCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFNISUZUX1RBRyh0YWcpKQo+ID4gKwo+ID4gK2ludCBtYWluKHZv
aWQpCj4gPiArewo+ID4gKyAgICAgc3RhdGljIGludCB0YmlfZW5hYmxlZCA9IDA7Cj4gPiArICAg
ICBzdHJ1Y3QgdXRzbmFtZSAqcHRyLCAqdGFnZ2VkX3B0cjsKPiA+ICsgICAgIGludCBlcnI7Cj4g
PiArCj4gPiArICAgICBpZiAocHJjdGwoUFJfU0VUX1RBR0dFRF9BRERSX0NUUkwsIFBSX1RBR0dF
RF9BRERSX0VOQUJMRSwgMCwgMCwgMCkgPT0gMCkKPiA+ICsgICAgICAgICAgICAgdGJpX2VuYWJs
ZWQgPSAxOwo+ID4gKyAgICAgcHRyID0gKHN0cnVjdCB1dHNuYW1lICopbWFsbG9jKHNpemVvZigq
cHRyKSk7Cj4gPiArICAgICBpZiAodGJpX2VuYWJsZWQpCj4gPiArICAgICAgICAgICAgIHRhZ2dl
ZF9wdHIgPSAoc3RydWN0IHV0c25hbWUgKilTRVRfVEFHKHB0ciwgMHg0Mik7Cj4gPiArICAgICBl
cnIgPSB1bmFtZSh0YWdnZWRfcHRyKTsKPiA+ICsgICAgIGZyZWUocHRyKTsKPiA+ICsKPiA+ICsg
ICAgIHJldHVybiBlcnI7Cj4gPiArfQo+ID4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
