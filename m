Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F77A162FF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=VoYPkQTe2n/mxyAte62eZqgliih9H4etQ4W3WILvn0c=; b=e8VYutRrJJqyc31xomVPZekl5
	NfWw3zcfg8LH2QlYEs2LRkYaaPmbF+1kC7ZtILdMX+bU2ve1ACmidZLM9JCxzQ29s3LCIU2BS//Mc
	AYrJ7VvRsJv3wd1WAXsIDdzDJu27fD4h9g6dbQ1qPwiFuvch6vBGIIaL73DsWysLVFIiZgopKfURP
	B9mYDual5jCaPVqAu8Jvd4s9XWVlNCwgDYrEoNAz6ZBFN+wQp199DUvc+Pd8bK84OehaBqzEkN3tv
	7HrGXKOMDvdp50mFKDrMDqJOKnjR3bSBIeRFKprqCUpGmq7PnFDTRBN1DcxdXKj8tcDqztFq4Ux71
	S72Gj28PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48Xj-00051J-TB; Tue, 18 Feb 2020 19:28:27 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48XZ-0004zq-JG
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:28:19 +0000
Received: by mail-pf1-x432.google.com with SMTP id 84so11140863pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=zhYJCkJXlPxXtgjObEVr42uyGuLn0+lKW2wKfP/UpCE=;
 b=DvmqpHrnM5O330XZo1r4oQuSvPgecXnkvWf1HePsqxhXDtfRmjIjyRMJC5NXDcCYn+
 OwvGhCTbVAvqmsw7DHX6CX7ayI8MRX80ZKZFm3l7gtOi8e7I+QXoV2LNG3hx3pvtvgiV
 LSIt91cMdVZ0sjN19WquhWlHxwMKtoi8sHzngiTeNW13UUBuZJ+eKQMx92fEmu2wm/iA
 Zt5J/EId0BdKG8K0owTwcXRs3abR2p6cDm6V/Hc1tImyyILCj1yMKM1SnD10oedygFij
 qIgZMDYYyaPAr0O+2Mq3cmqiX39FLOwWYivab+YigA6JwRjURv6j+9wGEC6ZR3iOJu+H
 mZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=zhYJCkJXlPxXtgjObEVr42uyGuLn0+lKW2wKfP/UpCE=;
 b=bx2pV2vUjXGz8xJm4vOGJ3stWOyp3xpcZT4OpVAWzBwAKRise9cgOgUgfZy98tJ34i
 1dw+9fCuiMO+uDlJQTdNx4mqr+SSIpaS3U3rSFCYtCXsSqp2TmmxdRmJvxVKHAFvDa4L
 6ru3aMbHGKCp1onXIRe+MvPnjQP7Y7/fVHhA5KVWuGwU8bQfsPSbwc3MXPT58ieZF1sh
 GYgUFGJHOQqYIDDi+72YZt4Yq+nsP+fhaA/aYIPlvAXKWilTqoDfkAUxga/2zPRRZ3+p
 mov/NVrCShaL55ARzYNR9yaHb6kPaoRZAJpF8tMsLWDWhJEHiISJ9v1S5NTdgtRjrVpe
 GMUQ==
X-Gm-Message-State: APjAAAWUAaDyUiZPeSTTMWKSnMIVJZUd7fEdqjxz8dytsvhkv+tAZs64
 bFkKica8xs8ESKKxy4u8On7lVA==
X-Google-Smtp-Source: APXvYqxvBhs/kNz46f0NM7yQK9O+VsDMro0hxwtL6uWXHEPpf1QvsgH3bBRF8NOa1+svFTWNKSApFA==
X-Received: by 2002:a62:cfc1:: with SMTP id b184mr22611022pfg.55.1582054093924; 
 Tue, 18 Feb 2020 11:28:13 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id q12sm4931028pfh.158.2020.02.18.11.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 11:28:13 -0800 (PST)
Date: Tue, 18 Feb 2020 11:28:13 -0800 (PST)
X-Google-Original-Date: Tue, 18 Feb 2020 11:28:02 PST (-0800)
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
In-Reply-To: <5e39d509c9edc_63882ad0d49345c08@john-XPS-13-9370.notmuch>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: john.fastabend@gmail.com
Message-ID: <mhng-eae623ac-3032-4327-9b23-af9838e3e979@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_112817_638017_BF68EFA8 
X-CRM114-Status: GOOD (  33.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: songliubraving@fb.com, andriin@fb.com, daniel@iogearbox.net,
 kernel-team@android.com, Bjorn Topel <bjorn.topel@gmail.com>, shuah@kernel.org,
 ast@kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 linux-kselftest@vger.kernel.org, catalin.marinas@arm.com, zlim.lnx@gmail.com,
 yhs@fb.com, bpf@vger.kernel.org, will@kernel.org, kafai@fb.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNCBGZWIgMjAyMCAxMjozMzoxMyBQU1QgKC0wODAwKSwgam9obi5mYXN0YWJlbmRA
Z21haWwuY29tIHdyb3RlOgo+IEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4+IE9uIFR1ZSwgMjggSmFu
IDIwMjAgYXQgMDM6MTQsIFBhbG1lciBEYWJiZWx0IDxwYWxtZXJkYWJiZWx0QGdvb2dsZS5jb20+
IHdyb3RlOgo+PiA+Cj4+ID4gVGhlcmUncyBmb3VyIHBhdGNoZXMgaGVyZSwgYnV0IG9ubHkgb25l
IG9mIHRoZW0gYWN0dWFsbHkgZG9lcyBhbnl0aGluZy4gIFRoZQo+PiA+IGZpcnN0IHBhdGNoIGZp
eGVzIGEgQlBGIHNlbGZ0ZXN0cyBidWlsZCBmYWlsdXJlIG9uIG15IG1hY2hpbmUgYW5kIGhhcyBh
bHJlYWR5Cj4+ID4gYmVlbiBzZW50IHRvIHRoZSBsaXN0IHNlcGFyYXRlbHkuICBUaGUgbmV4dCB0
aHJlZSBhcmUganVzdCBzdGFnZWQgc3VjaCB0aGF0Cj4+ID4gdGhlcmUgYXJlIHNvbWUgcGF0Y2hl
cyB0aGF0IGF2b2lkIGNoYW5naW5nIGFueSBmdW5jdGlvbmFsaXR5IHB1bGxlZCBvdXQgZnJvbQo+
PiA+IHRoZSB3aG9sZSBwb2ludCBvZiB0aG9zZSByZWZhY3RvcmluZ3MsIHdpdGggdHdvIGNsZWFu
dXBzIGFuZCB0aGVuIHRoZSBpZGVhLgo+PiA+Cj4+ID4gTWF5YmUgdGhpcyBpcyBhbiBvZGQgdGhp
bmcgdG8gc2F5IGluIGEgY292ZXIgbGV0dGVyLCBidXQgSSdtIG5vdCBhY3R1YWxseSBzdXJlCj4+
ID4gdGhpcyBwYXRjaCBzZXQgaXMgYSBnb29kIGlkZWEuICBUaGUgaXNzdWUgb2YgZXh0cmEgbW92
ZXMgYWZ0ZXIgY2FsbHMgY2FtZSB1cCBhcwo+PiA+IEkgd2FzIHJldmlld2luZyBzb21lIHVucmVs
YXRlZCBwZXJmb3JtYW5jZSBvcHRpbWl6YXRpb25zIHRvIHRoZSBSSVNDLVYgQlBGIEpJVC4KPj4g
PiBJIGZpZ3VyZWQgSSdkIHRha2UgYSB3aGFjayBhdCBwZXJmb3JtaW5nIHRoZSBvcHRpbWl6YXRp
b24gaW4gdGhlIGNvbnRleHQgb2YgdGhlCj4+ID4gYXJtNjQgcG9ydCBqdXN0IHRvIGdldCBhIGJy
ZWF0aCBvZiBmcmVzaCBhaXIsIGFuZCBJJ20gbm90IGNvbnZpbmNlZCBJIGxpa2UgdGhlCj4+ID4g
cmVzdWx0cy4KPj4gPgo+PiA+IFRoYXQgc2FpZCwgSSB0aGluayBJIHdvdWxkIGFjY2VwdCBzb21l
dGhpbmcgbGlrZSB0aGlzIGZvciB0aGUgUklTQy1WIHBvcnQKPj4gPiBiZWNhdXNlIHdlJ3JlIGFs
cmVhZHkgZG9pbmcgYSBtdWx0aS1wYXNzIG9wdGltaXphdGlvbiBmb3Igc2hyaW5raW5nIGZ1bmN0
aW9uCj4+ID4gYWRkcmVzc2VzIHNvIGl0J3Mgbm90IGFzIG11Y2ggZXh0cmEgY29tcGxleGl0eSBv
dmVyIHRoZXJlLiAgSWYgd2UgZG8gdGhhdCB3ZQo+PiA+IHNob3VsZCBwcm9iYWJseSBzdGFydCBw
dWxpbmcgc29tZSBvZiB0aGlzIGNvZGUgaW50byB0aGUgc2hhcmVkIEJQRiBjb21waWxlciwKPj4g
PiBidXQgd2UncmUgYWxzbyBvcGVuaW5nIHRoZSBkb29ycyB0byBtb3JlIGNvbXBsaWNhdGVkIEJQ
RiBKSVQgb3B0aW1pemF0aW9ucy4KPj4gPiBHaXZlbiB0aGF0IHRoZSBCUEYgSklUIGFwcGVhcnMg
dG8gaGF2ZSBiZWVuIGRlc2lnbmVkIGV4cGxpY2l0bHkgdG8gYmUKPj4gPiBzaW1wbGUvZmFzdCBh
cyBvcHBvc2VkIHRvIHBlcmZvcm0gY29tcGxleCBvcHRpbWl6YXRpb24sIEknbSBub3Qgc3VyZSB0
aGlzIGlzIGEKPj4gPiBzYW5lIHdheSB0byBtb3ZlIGZvcndhcmQuCj4+ID4KPj4gCj4+IE9idmlv
dXNseSBJIGNhbiBvbmx5IHNwZWFrIGZvciBteXNlbGYgYW5kIHRoZSBSSVNDLVYgSklULCBidXQg
Z2l2ZW4KPj4gdGhhdCB3ZSBhbHJlYWR5IGhhdmUgb3BlbmVkIHRoZSBkb29yIGZvciBtb3JlIGFk
dmFuY2VkIHRyYW5zbGF0aW9ucwo+PiAoYnJhbmNoIHJlbGF4YXRpb24gZS5nLiksIEkgdGhpbmsg
dGhhdCB0aGlzIG1ha2VzIHNlbnNlLiBBdCB0aGUgc2FtZQo+PiB0aW1lIHdlIGRvbid0IHdhbnQg
dG8gZ28gYWxsIEpWTSBvbiB0aGUgSklUcy4gOi1QCj4KPiBJJ20gbm90IGFnYWluc3QgaXQgYWx0
aG91Z2ggaWYgd2Ugc3RhcnQgdG8gZ28gdGhpcyByb3V0ZSBJIHdvdWxkIHdhbnQgc29tZQo+IHdh
eSB0byBxdWFudGlmeSBob3cgd2UgYXJlIGluY3JlYXNpbmcvZGVzY3JlYXNpbmcgbG9hZCB0aW1l
cy4KPgo+PiAKPj4gPiBJIGZpZ3VyZWQgSSdkIHNlbmQgdGhlIHBhdGNoIHNldCBvdXQgYXMgbW9y
ZSBvZiBhIHF1ZXN0aW9uIHRoYW4gYW55dGhpbmcgZWxzZS4KPj4gPiBTcGVjaWZpY2FsbHk6Cj4+
ID4KPj4gPiAqIEhvdyBzaG91bGQgSSBnbyBhYm91dCBtZWFzdXJpbmcgdGhlIHBlcmZvcm1hbmNl
IG9mIHRoZXNlIHNvcnQgb2YKPj4gPiAgIG9wdGltaXphdGlvbnM/ICBJJ2QgbGlrZSB0byBiYWxh
bmNlIHRoZSB0aW1lIGl0IHRha2VzIHRvIHJ1biB0aGUgSklUIHdpdGggdGhlCj4+ID4gICB0aW1l
IHNwZW50IGV4ZWN1dGluZyB0aGUgcHJvZ3JhbSwgYnV0IEkgZG9uJ3QgaGF2ZSBhbnkgZmVlbCBm
b3Igd2hhdCByZWFsIEJQRgo+PiA+ICAgcHJvZ3JhbXMgbG9vayBsaWtlIG9yIGhhdmUgYW55IGJl
bmNobWFyayBzdWl0ZSB0byBydW4uICBJcyB0aGVyZSBzb21ldGhpbmcKPj4gPiAgIG91dCB0aGVy
ZSB0aGlzIHNob3VsZCBiZSBiZW5jaG1hcmtlZCBhZ2FpbnN0PyAgKEknZCBhbHNvIGxpa2UgdG8g
a25vdyB0aGF0IHRvCj4+ID4gICBydW4gdGhvc2UgYmVuY2htYXJrcyBvbiB0aGUgUklTQy1WIHBv
cnQuKQo+PiAKPj4gSWYgeW91IHJ1biB0aGUgc2VsZnRlc3RzICd0ZXN0X3Byb2dzJyB3aXRoIC12
IGl0J2xsIG1lYXN1cmUvcHJpbnQgdGhlCj4+IGV4ZWN1dGlvbiB0aW1lIG9mIHRoZSBwcm9ncmFt
cy4gSSdkIHNheSAqbW9zdCogQlBGIHByb2dyYW0gaW52b2tlcyBhCj4+IGhlbHBlciAodmlhIGNh
bGwpLiBJdCB3b3VsZCBiZSBpbnRlcmVzdGluZyB0byBzZWUsIGZvciBzYXkgdGhlCj4+IHNlbGZ0
ZXN0cywgaG93IG9mdGVuIHRoZSBvcHRpbWl6YXRpb24gY2FuIGJlIHBlcmZvcm1lZC4KPj4gCj4+
ID4gKiBJcyB0aGlzIHRoZSBzb3J0IG9mIHRoaW5nIHRoYXQgbWFrZXMgc2Vuc2UgaW4gYSBCUEYg
SklUPyAgSSBndWVzcyBJJ3ZlIGp1c3QKPj4gPiAgIHJlYWxpemVkIEkgdHVybmVkICJyZXZpZXcg
dGhpcyBwYXRjaCIgaW50byBhIHdheSBiaWdnZXIgcmFiYml0IGhvbGUgdGhhbiBJCj4+ID4gICBy
ZWFsbHkgd2FudCB0byBnbyBkb3duLi4uCj4+ID4KPj4gCj4+IEknZCBzYXkgJ3llcycuIE15IGh1
bmNoLCBhbmQgdGhlIHdvcmtsb2FkcyBJJ3ZlIHNlZW4sIEJQRiBwcm9ncmFtcyBhcmUKPj4gdXN1
YWxseSBsb2FkZWQsIGFuZCB0aGVuIHJlc2lkZW50IGZvciBhIGxvbmcgdGltZS4gU28sIHRoZSBK
SVQgdGltZSBpcwo+PiBub3Qgc3VwZXIgY3JpdGljYWwuIFRoZSBGQi9DaWxpdW0gZm9sa3MgY2Fu
IGRlZmluaXRlbHkgcHJvdmlkZSBhCj4+IGJldHRlciBzYW1wbGUgcG9pbnQsIHRoYW4gbXkgaHVu
Y2guIDstKQo+Cj4gSW4gb3VyIGNhc2UgdGhlIEpJVCB0aW1lIGNhbiBiZSByZWxldmFudCBiZWNh
dXNlIHdlIGFyZSBlZmZlY3RpdmVseSBob2xkaW5nCj4gdXAgYSBrdWJlcm5ldGVzIHBvZCBsb2Fk
IHdhaXRpbmcgZm9yIHByb2dyYW1zIHRvIGxvYWQuIEhvd2V2ZXIsIHdlIGNhbgo+IHByb2JhYmx5
IHdvcmstYXJvdW5kIGl0IGJ5IGRvaW5nIG1vcmUgYWdncmVzc2l2ZSBkeW5hbWljIGxpbmtpbmcg
bm93IHRoYXQKPiB0aGlzIGlzIHN0YXJ0aW5nIHRvIGxhbmQuCj4KPiBJdCB3b3VsZCBiZSBpbnRl
cmVzdGluZyB0byBoYXZlIGEgdGVzdCB0byBtZWFzdXJlIGxvYWQgdGltZSBpbiBzZWxmdGVzdHMK
PiBvciBzZWxmdGVzdHMvYmVuY2htYXJrLyBwZXJoYXBzLiBXZSBoYXZlIHNvbWUgb2YgdGhlc2Ug
b3V0IG9mIHRyZWUgd2UKPiBjb3VsZCBwdXNoIGluIEkgdGhpbmsgaWYgdGhlcmUgaXMgaW50ZXJl
c3QuCgpJJ2QgYmUgaW50ZXJlc3RlZCBpbiBzb21lIHNvcnQgb2YgYmVuY2htYXJrIHN1aXRlIGZv
ciBCUEYuICBTb21ldGhpbmcgbGlrZQpzZWxmdGVzdHMvYnBmL2JlbmNobWFya3MvIHNlZW1zIGxp
a2UgYSByZWFzb25hYmxlIHBsYWNlIHRvIG1lLgoKPgo+PiAKPj4gCj4+IEJqw7ZybgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
