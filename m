Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E7D1720B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 15:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMvC2xh1dvPBS570aT8e5V2o7GanpKVVXlnK+axOo5s=; b=PqfMUaBUVEimT8
	9DwIFk90RlH20uYV/Y5RAeS0bvNlM7PCLBy7CJk5e+G0FFV4ljTH3Rw0uayNnMYVFiL6qIi2183Su
	BZQtGwUZzmT0GAVyppangXWVKO+pzBaCRtMTiPd2X48DS8IdNTKJJdnvn4hhTzyEz8SiuRewSOfvN
	h7KBIKB46DzTqXudhRqNE3n4PLS10HiqGnV+C2acZGH95CHTDAAgVjbtdRrWfsH9/BuzV36VhOboh
	cnXT//fmRrNN1hwqztcZDU9Y0IfWIsjXW2fUa6SlMwCXRffHt4Mh6InfYTf2Cbg5YGs5UI+PeCsKr
	cVH2TXFhS9wIJ75+SmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KP9-0005Cw-SD; Thu, 27 Feb 2020 14:44:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KOz-0005CL-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 14:44:39 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E499246A4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582814676;
 bh=mvq7N1igLw7UjhW1AMRRMOdKAT+CXrmcj/HKzuI4XsM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oAmqEnyB6SuIRPZRGXE9vxc3k2lIeDNFueCvEk0PdSrEvUWRP0uirX3R99g8P7uQa
 i/DYIdQ7fznjx8Ch29afbbjEPz9F/bborGbhDKxTWeDjvWJ9yjULt8PuTB0XTBvkYM
 iaUgfZyTNTDkgvuu/Z1pLptq6fVGj2mwKUuojqaY=
Received: by mail-qk1-f174.google.com with SMTP id m2so3324916qka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 06:44:36 -0800 (PST)
X-Gm-Message-State: APjAAAUd2CI6wf6jGBUZ2rVZfC1439KtR5R9P+yyItVxEeVDXKBpyQvh
 NaiVS8qyRqzOWo9NiMkcMUQDzQVj1QMkGm5oww==
X-Google-Smtp-Source: APXvYqyY/FhutGJvucWc7ejVRBFSVeez5Yc0iP8BZeLMcHqPqR7EsY5664LyS1HcjV7Xoy8VBy9CBzBssUSEmWXcVjg=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr5913674qkg.152.1582814675567; 
 Thu, 27 Feb 2020 06:44:35 -0800 (PST)
MIME-Version: 1.0
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-13-andre.przywara@arm.com>
 <20200226215732.GA32486@bogus>
 <557906ef-28e8-bdf0-5ec9-ab859935f752@arm.com>
In-Reply-To: <557906ef-28e8-bdf0-5ec9-ab859935f752@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 27 Feb 2020 08:44:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLw2eru3k+=LB9Q_MGHTapRy59JgPZTixywzj-Zs_xudg@mail.gmail.com>
Message-ID: <CAL_JsqLw2eru3k+=LB9Q_MGHTapRy59JgPZTixywzj-Zs_xudg@mail.gmail.com>
Subject: Re: [PATCH 12/13] dt-bindings: arm: Add Calxeda system registers
 json-schema binding
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_064437_562533_0738443A 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMjYsIDIwMjAgYXQgNjoxMiBQTSBBbmRyw6kgUHJ6eXdhcmEgPGFuZHJlLnBy
enl3YXJhQGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjYvMDIvMjAyMCAyMTo1NywgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4KPiBIaSBSb2IsCj4KPiB0aGFua3MgZm9yIGdpdmluZyBpdCBhIHRyeSEKPgo+
ID4gT24gV2VkLCAyNiBGZWIgMjAyMCAxODowOTowMCArMDAwMCwgQW5kcmUgUHJ6eXdhcmEgd3Jv
dGU6Cj4gPj4gVGhlIENhbHhlZGEgc3lzdGVtIHJlZ2lzdGVycyBhcmUgYSBjb2xsZWN0aW9uIG9m
IE1NSU8gcmVnaXN0ZXIKPiA+PiBjb250cm9sbGluZyBzZXZlcmFsIG1vcmUgZ2VuZXJhbCBhc3Bl
Y3RzIG9mIHRoZSBTb0MuCj4gPj4gQmVzaWRlIGZvciBzb21lIHBvd2VyIG1hbmFnZW1lbnQgdGFz
a3MgdGhpcyBub2RlIGlzIGFsc28gc29tZXdoYXQKPiA+PiBhYnVzZWQgYXMgdGhlIGNvbnRhaW5l
ciBmb3IgdGhlIGNsb2NrIG5vZGVzLgo+ID4+Cj4gPj4gQWRkIGEgYmluZGluZyBpbiBEVCBzY2hl
bWEgZm9ybWF0IHVzaW5nIGpzb24tc2NoZW1hLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQW5k
cmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+Cj4gPj4gLS0tCj4gPj4gIC4uLi9i
aW5kaW5ncy9hcm0vY2FseGVkYS9oYi1zcmVncy55YW1sICAgICAgICB8IDQ3ICsrKysrKysrKysr
KysrKysrKysKPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKykKPiA+PiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY2Fs
eGVkYS9oYi1zcmVncy55YW1sCj4gPj4KPiA+Cj4gPiBNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5p
bmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoKPiA+Cj4gPiB3YXJuaW5n
OiBubyBzY2hlbWEgZm91bmQgaW4gZmlsZTogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9jYWx4ZWRhL2hiLXNyZWdzLnlhbWwKPiA+IC9idWlsZHMvcm9iaGVycmluZy9saW51
eC1kdC1yZXZpZXcvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jYWx4ZWRh
L2hiLXNyZWdzLnlhbWw6IGlnbm9yaW5nLCBlcnJvciBpbiBzY2hlbWE6IHByb3BlcnRpZXM6IGNs
b2Nrcwo+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc2ltcGxl
LWZyYW1lYnVmZmVyLmV4YW1wbGUuZHRzOjIxLjE2LTM3LjExOiBXYXJuaW5nIChjaG9zZW5fbm9k
ZV9pc19yb290KTogL2V4YW1wbGUtMC9jaG9zZW46IGNob3NlbiBub2RlIG11c3QgYmUgYXQgcm9v
dCBub2RlCj4gPiAvYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQtcmV2aWV3L0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY2FseGVkYS9oYi1zcmVncy55YW1sOiBwcm9wZXJ0
aWVzOmNsb2Nrczogeyd0eXBlJzogJ29iamVjdCd9IGlzIG5vdCB2YWxpZCB1bmRlciBhbnkgb2Yg
dGhlIGdpdmVuIHNjaGVtYXMgKFBvc3NpYmxlIGNhdXNlcyBvZiB0aGUgZmFpbHVyZSk6Cj4gPiAg
ICAgICAvYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQtcmV2aWV3L0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vY2FseGVkYS9oYi1zcmVncy55YW1sOiBwcm9wZXJ0aWVzOmNs
b2NrczogJ21heEl0ZW1zJyBpcyBhIHJlcXVpcmVkIHByb3BlcnR5Cj4gPgo+ID4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL01ha2VmaWxlOjEyOiByZWNpcGUgZm9yIHRhcmdldCAn
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jYWx4ZWRhL2hiLXNyZWdzLmV4
YW1wbGUuZHRzJyBmYWlsZWQKPiA+IG1ha2VbMV06ICoqKiBbRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9jYWx4ZWRhL2hiLXNyZWdzLmV4YW1wbGUuZHRzXSBFcnJvciAxCj4g
PiBNYWtlZmlsZToxMjYzOiByZWNpcGUgZm9yIHRhcmdldCAnZHRfYmluZGluZ19jaGVjaycgZmFp
bGVkCj4gPiBtYWtlOiAqKiogW2R0X2JpbmRpbmdfY2hlY2tdIEVycm9yIDIKPiA+Cj4gPiBTZWUg
aHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMjQ1MjYxCj4gPiBQbGVhc2UgY2hl
Y2sgYW5kIHJlLXN1Ym1pdC4KPgo+IEFoLCByaWdodCwgSSBmb3Jnb3QgdGhhdCBJIGFjdHVhbGx5
IGZpeGVkIGR0LXNjaGVtYToKPgo+IEl0IHNlZW1zIGxpa2Ugd2UgY2FuIGNvcGUgd2l0aCAiY2xv
Y2tzIiBiZWluZyBqdXN0IGEgbm9kZSBuYW1lIGluCj4gc2NoZW1hL2Nsb2NrL2Nsb2NrLnlhbWwg
WzFdLCBidXQgbm90IGluIG1ldGEtc2NoZW1hcy9jbG9ja3MueWFtbCBbMl0uCj4KPiBJIGFkZGVk
IGEgc2ltaWxhciBhbnlPZiAuLi4gdG8gdGhlIG1ldGEtc2NoZW1hcyBlbnRyeSwgd2hpY2ggc2Vl
bXMgdG8KPiBmaXggaXQgZm9yIG1lLgo+Cj4gQ2FuIHlvdSBjb25maXJtIHRoYXQgdGhpcyBpcyBh
IGJ1ZyBpbiBkdC1zY2hlbWEgYW5kIHRoaXMgaXMgdGhlIHByb3Blcgo+IGZpeCBvciBhbSBJIGRv
aW5nIHNvbWV0aGluZyB3cm9uZyAoSSBoYXZlIG9ubHkgYSBzbWF0dGVyaW5nIGluCj4gZHQtc2No
ZW1hL2pzb24pPwoKWWVhaCwgdGhhdCdzIHJpZ2h0LiBUaG91Z2ggaWRlYWxseSB3ZSdkIGF2b2lk
IG5hbWVzIHRoYXQgYXJlIHVzZWQgYXMKYm90aCBwcm9wZXJ0aWVzIGFuZCBub2RlcywgYnV0IHRo
aXMgb25lIGlzIGtpbmQgb2Ygd2lkZWx5IHVzZWQuCgpDYW4geW91IHN1Ym1pdCBhIEdIIHB1bGwg
cmVxIHdpdGggdGhlIGZpeCAodXNlIHRoZSBkZXZpY2V0cmVlLW9yZyBvbmUsCm5vdCBteSB0cmVl
KS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
