Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF001CEF22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk2JB4aNOFYSiXQqZC8y2BohdBJFa6VdA1nz/ItNVNY=; b=gmyunMpvQ+77II
	Yjn8yGVDtnCyJbsdC0WQoYG7mRAOdo2dBWWaReM7JlNkIc7M7i6REirfGkcTmrHNYGYM01yGrvViG
	7kYIUffJRNtMxruQYl7JrMCcrCWjYH+fLMDhTcT8gl+68G6INBFY+PVv6SC+wOWN0O4xLNmrr2ZJA
	C0UrHtizfs8rZu1Hml8OWj5SA3a4KXGGbRPK8XkPNMwjKtcoHZt4PBJqIuyXO/9YfVejK5uM/DVyw
	aBJrXTaDK9z04jKmmOxmpr4dNnrF938bICtaJqfX6/AtyFzfEvh4QCIo/J+QYAHsHG47p3zLMAr5a
	Zx3C/TQv9Cd+llbmGQdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQHn-00048E-9A; Tue, 12 May 2020 08:29:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQHf-00047K-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 08:29:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id h17so5341645wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 01:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CLwgn00j3cccENKknkxTYm+dTCnpuQMyc2nOwSHSj2c=;
 b=BYn6G5G3mtGsIR1q4yA4kFS7gfXpBHHdZKx0VJK7nrUiNtfFh+DdPFXdeAXqIZvVDv
 v0PgNgzR4GT8M52jE89yjyq94Q62WiavRzf0MTRQgnu0uJbfVVCLlPY/JVLeo33RV7j9
 HBq3nfoDVTq7kErmLaSWtEpPMXkVZkcLD2+OHGVEeVKJppnkAW6Z4U6xU/Nh1x/yWenb
 MQylVsHkc79+ixLtUnYaOMMSzQZhVr3XrGvWnCefe37GJAxHKcYxhkjCCBSMiXXlzZ2y
 CKWAeixz+8wDaMHk3ppW6gRgFeVBXo/XCvEWzOBxMPeQDHO64hnF7wpRSx/0m9UW6cIa
 RxtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CLwgn00j3cccENKknkxTYm+dTCnpuQMyc2nOwSHSj2c=;
 b=EwKzLXA+/kwhfczj1jEJPhJYvYoydNZbXzX1JD1dvC6BzwCwGUCWwNmQz0JZUqXKKr
 f/S8VH9lBicgFX1CqjqWNblmNEVo06rl2x6CAulzj9fT5f2hLHTPKE5+WscHvTSkPXLo
 WqT/1+059WuXsWtH8iPkp/FxbpnmvE94qGekfNoMSWEz9oyRFli6f1BfCJuWQlpU+gOU
 2iAfHwQwVPO7lyl4yX29F3lrdPgj8EYl7M8wPm8WV4mWqJ1B9YLqHdZi4FGOVwfcOTdH
 Q5T8qf6uXCxdpslI+7z482yOohcOTGhCDX3vUKCZ/GotboeGeVHtbjFxtke9odtxFtEE
 a4lQ==
X-Gm-Message-State: AGi0PuZCggr86Ab3ioHab5J2/uHES4OXQN38FvOqzikfHqb2kfRfKKom
 9zPrjB8c6QPMth+Imeog+iD9q3rZjFHA4irSSGZTDmMc
X-Google-Smtp-Source: APiQypKiw4ztGscW4TPsTbkxd70wqekjLwotcF9sLjfkoh2+IyKcOT4dTgbQuhjEHTTRs0ceruxRG49EoxIeiRErzTc=
X-Received: by 2002:adf:c7c3:: with SMTP id y3mr23375923wrg.196.1589272141413; 
 Tue, 12 May 2020 01:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200508091340.11711-1-zhang.lyra@gmail.com>
 <20200511164647.GA13202@xps15>
In-Reply-To: <20200511164647.GA13202@xps15>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Tue, 12 May 2020 16:28:25 +0800
Message-ID: <CAAfSe-v4h4p5bGPrTo3U+GxNGMxK78ZKK-L=Eiyb=Fnq+Do9Ng@mail.gmail.com>
Subject: Re: [PATCH] coresight: tmc: mark coresight_tmc_groups with static
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_012903_093836_8DA8F858 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMiBNYXkgMjAyMCBhdCAwMDo0NiwgTWF0aGlldSBQb2lyaWVyCjxtYXRoaWV1LnBv
aXJpZXJAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBIaSBDaHVueWFuLAo+Cj4gT24gRnJpLCBNYXkg
MDgsIDIwMjAgYXQgMDU6MTM6NDBQTSArMDgwMCwgQ2h1bnlhbiBaaGFuZyB3cm90ZToKPiA+IEZy
b206IENodW55YW4gWmhhbmcgPGNodW55YW4uemhhbmdAdW5pc29jLmNvbT4KPiA+Cj4gPiBTcGFy
c2UgcmVwb3J0cyBhIHdhcm5pbmcgbGlrZToKPiA+IGRyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdo
dC9jb3Jlc2lnaHQtdG1jLmM6MzY0OjMwOiB3YXJuaW5nOiBzeW1ib2wKPiA+ICdjb3Jlc2lnaHRf
dG1jX2dyb3Vwcycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8gW3NwYXJz
ZV0KPiA+Cj4gPiBjb3Jlc2lnaHRfdG1jX2dyb3VwcyBpcyB1c2VkIGluIHRoZSBsb2NhbCBmaWxl
IG9ubHksIHNvIGl0IHNob3VsZCBiZQo+ID4gbWFya2VkIHdpdGggc3RhdGljLgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IENodW55YW4gWmhhbmcgPGNodW55YW4uemhhbmdAdW5pc29jLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtdG1jLmMgfCAy
ICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQt
dG1jLmMgYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXRtYy5jCj4gPiBp
bmRleCAxY2Y4MmZhLi4zOWZiYTFkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9od3RyYWNpbmcv
Y29yZXNpZ2h0L2NvcmVzaWdodC10bWMuYwo+ID4gKysrIGIvZHJpdmVycy9od3RyYWNpbmcvY29y
ZXNpZ2h0L2NvcmVzaWdodC10bWMuYwo+ID4gQEAgLTM2MSw3ICszNjEsNyBAQCBzdGF0aWMgc3Np
emVfdCBidWZmZXJfc2l6ZV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gPiAgICAgICAubmFt
ZSA9ICJtZ210IiwKPiA+ICB9Owo+ID4KPiA+IC1jb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3Vw
ICpjb3Jlc2lnaHRfdG1jX2dyb3Vwc1tdID0gewo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0
cmlidXRlX2dyb3VwICpjb3Jlc2lnaHRfdG1jX2dyb3Vwc1tdID0gewo+Cj4gVGhpcyBoYXMgYWxy
ZWFkeSBiZWVuIGFkZHJlc3NlZCBieSBTdGVwaGVuIFsxXSBlYXJsaWVyIGluIHRoaXMgY3ljbGUu
ICBJdCBpcwo+IGN1cnJlbnRseSBpbiBsaW51eC1uZXh0IGFuZCB3aWxsIGJlIHN1Ym1pdHRlZCBm
b3IgaW5jbHVzaW9uIGluIHRoZSBuZXh0IGN5Y2xlLgo+Cj4gVGhhbmtzLAo+IE1hdGhpZXUKPgo+
IFsxXS4gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2c4MDE3MTQu
aHRtbAoKSXQgaXMgYmV0dGVyLCBJIHdpbGwgYmFja3BvcnQgdGhpcyBwYXRjaOOAggoKVGhhbmtz
IE1hdGhpZXXvvIEKCj4KPiA+ICAgICAgICZjb3Jlc2lnaHRfdG1jX2dyb3VwLAo+ID4gICAgICAg
JmNvcmVzaWdodF90bWNfbWdtdF9ncm91cCwKPiA+ICAgICAgIE5VTEwsCj4gPiAtLQo+ID4gMS45
LjEKPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
