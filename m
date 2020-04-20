Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D693C1B0E32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+To+KY/HYDFB42YIUib1Qulwuo/Gt5bD6/ZJMalLAWQ=; b=J9UPJ7uZq+/O2JpRQULXe9iShk
	xa16MwqxakKjNI+os1LwL1j/SKO0wsRJwqJou0scsabtgkuqFTYTX24v/s1v8lPEriFY+ijfXrTlP
	2u43r8/pGE8SBqI0ONMHjifmtHd5fzWKHCAHdBv/ukGAThIVb/PXWzdNFhkvWyjooTIGy8A6n25un
	Ik5xOKchrtxvD+QUyVSADh9EA1dGg+PSnvverukdRIU5iBzvb/nyDSUgq80g6m3PCSTjUplWC4Zym
	QgdrVUiKq+t1m6dmjd7OBgJJ6tsC2yqMBBBDTnI/gP1GDTDwxvXElmM+ATMMp4735q6soZpOB7l9x
	JrwW3vKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXIH-0005Th-IT; Mon, 20 Apr 2020 14:21:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXI9-0005T7-Mp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:20:58 +0000
Received: by mail-io1-xd41.google.com with SMTP id i3so11063981ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 07:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=42ZUa8jWdE/lvIlXQ+IaCeRxAVuDOUkmSNgCJWEQBiU=;
 b=kJL1QKKg8hZD4dmy5HJBPi0VXJYjon4U+mxBDXd4WLeA6JYTuRShbDcgFt/8qAhDJ8
 rhuz8FTqtmUpcY+jaHRbFWuI060FieGdJ2QUb68Mg+PQpEK98WRTb0kibVi5zgnECM9+
 +jlRLVRRL8pAKVXeAnpmHP5alVl+nPALYdy1KwTuzoapeLjW5CAstiYlMJnJlG5phOu/
 0bXhnSWy4JQx6LFMZ3k23WhI8R2m7fd4Lsif6jOKKvgYEyLOEoGfr+1n1erve7RChDo0
 3TfmZPREQ7ciNlZQTB+Mxuf54kw7PRPgVIO7Hw83iBXumXo6A74n/Bk1XNawEZXHbTv0
 adZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=42ZUa8jWdE/lvIlXQ+IaCeRxAVuDOUkmSNgCJWEQBiU=;
 b=EbH+u1PxyxajA9xanAVvh8T1Pjvu7ir4ZmNlhGNgilrsf5hEHkT6ZO3TjGZi/tb63J
 N40RPB2hIckjWGUo7IFCKZv2sBRhQWwK8l1ioSIElVETyr4NjeJzMa+nKJKC8Rcr64R+
 z9/B3DOaMAuL216J+RkbXpYh1gkgs/XgKoGzmNnaEbLAY4BEhA42KbnGUGkyhNlWSUYg
 PKW0cbkNXWv92hppXDW7g0zGV2w4ejv1te+FL0ZKcr/cIpyXw2RO4asm7v0GP14LnOCv
 283Mjrs65a8jurDDGFl/BmyszfMJf3eoeNYmkh4GNlvnelYn0dtyzrgkU/pmPwL7xd3I
 sSsg==
X-Gm-Message-State: AGi0Pub2fKn7AdkoFgvt53r6fl5+fbc6hRUEv+UdGiwlGpLym6wOEsjt
 Ksq5r2H0ZGvUPttzrIFeWGxSMEEgKU84F00mJh8=
X-Google-Smtp-Source: APiQypL0OkJvfEysFH1/EQ62r1/N4+ezRkdGJZS2/B6mM481eEQlfXXpdzcY5DOOq2sqZq3sPyJawscazL2Vh5IS3Og=
X-Received: by 2002:a5d:9494:: with SMTP id v20mr15827724ioj.101.1587392456788; 
 Mon, 20 Apr 2020 07:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200420130021.3841-1-peron.clem@gmail.com>
 <20200420130021.3841-3-peron.clem@gmail.com>
 <20200420134604.bkjp66fjiggses7a@core.my.home>
In-Reply-To: <20200420134604.bkjp66fjiggses7a@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 Apr 2020 16:20:45 +0200
Message-ID: <CAJiuCcf_-2bSR61goL7vLXGSjNCsUYQ12j2JM3V4MJiSo3srZw@mail.gmail.com>
Subject: Re: [PATCH v5 2/9] arm64: dts: allwinner: h6: Add thermal trip
 points/cooling map
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072057_742221_18D47E87 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKT24gTW9uLCAyMCBBcHIgMjAyMCBhdCAxNTo0NiwgT25kxZllaiBKaXJtYW4g
PG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gTW9uLCBBcHIgMjAsIDIw
MjAgYXQgMDM6MDA6MTRQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gRnJvbTog
T25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPgo+ID4gVGhpcyBlbmFibGVzIHBh
c3NpdmUgY29vbGluZyBieSBkb3duLXJlZ3VsYXRpbmcgQ1BVIHZvbHRhZ2UKPiA+IGFuZCBmcmVx
dWVuY3kuCj4KPiBEb2VzIHRoaXMgbm90IHByb2R1Y2UgYSBsb3Qgb2Ygd2FybmluZ3MgZm9yIHlv
dSBkdXJpbmcgY29tcGlsYXRpb24/CgpJIGdvdCBmbG9vZGVkIGJ5IGxvdHMgb2Ygd2FybmluZ3Ms
IGZyb20gc3VuNTBpLWE2NCwgc3RyaW5ncmF5LXVzYiwKaXBxNjAxOCBhbmQgZGlkbid0IHNlZSBi
dXQgdHdvIGFyZSBmcm9tIHN1bjUwaS1oNi4KClRoZSAjY29vbGluZy1jZWxscyBwcm9wZXJ0eSBp
cyBtaXNzaW5nIGZvciBDUFUuCgpXaWxsIHNlbmQgYSBwYXRjaCBmb3Igbm90aWNpbmcuCgpSZWdh
cmQsCkNsZW1lbnQKCgoKPgo+IHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDI0ICsrKysrKysrKysr
KysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gaW5kZXgg
MzcwZTc3Yjg2ZmUxLi42MGRhMTYyNzc3MmIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IEBAIC05NjQsNiArOTY0LDMwIEBACj4g
PiAgICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+ID4g
ICAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MD47Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMD47Cj4gPiArCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgdHJpcHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y3B1X2FsZXJ0OiBjcHUtYWxlcnQgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB0ZW1wZXJhdHVyZSA9IDw4NTAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAicGFzc2l2ZSI7Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY3B1LWNyaXQgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0
ZW1wZXJhdHVyZSA9IDwxMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBoeXN0ZXJlc2lzID0gPDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB0eXBlID0gImNyaXRpY2FsIjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIH07Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjb29saW5nLW1hcHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbWFwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRy
aXAgPSA8JmNwdV9hbGVydD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19M
SU1JVD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPCZjcHUxIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
cHUyIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcHUzIFRIRVJNQUxf
Tk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiAgICAgICAgICAgICAgIH07
Cj4gPgo+ID4gICAgICAgICAgICAgICBncHUtdGhlcm1hbCB7Cj4gPiAtLQo+ID4gMi4yMC4xCj4g
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
