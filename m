Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CBB326D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 00:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fF4Ufz6vImHvU9QVYrPEu/zIzGbGwqaH/x9S+gPNXg=; b=cSugmbIytwsuN8
	Qbt6XTbBdCuJkUwQ8u3L7yb41WsL6vSNsrGXhweb9sbGNppDLFzNdwbNkB0TGe0YZefghiKa2yeVT
	5GdzaZVe9ytYCsB2Ez/VeL28JbuhUYLDUIDJSdSlMWY03ETlBHWKJSui/Nc7hlhP+rScFsc1cZhpl
	7SEJjd4oLJAWH7tJqXFwPU6JpL3fqVBKYuIe5/rYJlnJ3ANJ4v57ViIEtlfyAg24zZRLX2a4ZKLAP
	IY+UOxSmvlOIgJCAajD5s5k79s9+UhtABbAN7a5DOhHNtr6i36Q5LZlDGP2KnzZDCwa78ixPRIBOI
	skIFHf8imUKUr1Kz5q2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9cuK-0008GY-17; Sun, 15 Sep 2019 22:22:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cu7-0008FQ-Rb
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 22:22:01 +0000
Received: by mail-qk1-x744.google.com with SMTP id x134so34328314qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 15:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AfjoPCOD52jjFgBq/i5FYuS0UjsI4UNOYM48ZVeX3bE=;
 b=tnPBDrO9qOYjSRmifs/kFutlE6E1HUrxpCCIivLA7x8+Zw4O1bf6X85jC7M7aumm5F
 N/L93c6/ZdO7Q1Qejnli6ibosiEaiAWwAsIeMVQbIP9uXou+LLBQ1Jl+nPf8SGR6JEPb
 6AV7ySCf4N4HPU4FJzhLrs0ktYrGknOxPkRaJjLTC5K/lALC58JiAo+cW/f9sx9o7zmu
 3rqGYI/62mDMUQ/kGN/wbpVPCra1e5cazfePzj/+AR7iP38W+UxErkwNf6hsL/rycTh3
 pZpMd5b4FsuzaXnpo3OgDgi4sqaO5HTttg7UQn6gRa2jyLVYIdcSP4J07d9UeP2nTeFF
 r0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AfjoPCOD52jjFgBq/i5FYuS0UjsI4UNOYM48ZVeX3bE=;
 b=tSjS431QNovhQhHpBUBhK+eIeiy1af7W2HXgbRLAX6iS9u90Fh/lKpxKalUZnJeJoY
 A/0Cg4JX46VTGhm8jyMT/eWTQ6d4XJTvmg8VWyzWpTF5T8AUVOpQ3K+XdG7CjuRzNvmV
 LMAoi7zvbg75vEWE89lN9ffVvt2+zj/cQIzyiia/eq7rE0FY+5osXPxMyJQBSPBYIT6D
 dypxSLIwkP1HXHLBhP+aWswLyo5UXOhZhea9u1Om/CNMW2Vj1IoOtbi4/MIkU9IsdUpM
 rhtjccSwt+XadmYr2YSJzM+UMcQklbMoQFzJmUZBcWujFjUY1mA3zpXRQca6848NBl51
 Jhxg==
X-Gm-Message-State: APjAAAWsDyI6JmC44WMwxUhBW25Ez0fMh55BxYIFqQJVoqlZiGobt2kH
 HpH+Knz9cDf55mIj159wc7DDoPSHqaNTEHAdKbU=
X-Google-Smtp-Source: APXvYqzBYKegH8vmzwFoL27HDmfSnlzgRRw4WatjG7yk6CecWiFjmVQdYKvh3yDtbOQWSwIZ1kLaObi4NxNEOHnahXY=
X-Received: by 2002:a37:b07:: with SMTP id 7mr56662105qkl.386.1568586115474;
 Sun, 15 Sep 2019 15:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190911141552.rtpdazx3ekfgsh3v@raspberrypi>
In-Reply-To: <20190911141552.rtpdazx3ekfgsh3v@raspberrypi>
From: Austin Kim <austindh.kim@gmail.com>
Date: Mon, 16 Sep 2019 07:21:45 +0900
Message-ID: <CADLLry5B07+Bqh5iys4tHi9OKsGGonmus0xZ4SzfK_ktceS9AQ@mail.gmail.com>
Subject: Re: [RESEND PATCH] ARM: module: Drop 'rel->r_offset < 0' statement
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, allison@lohutok.net,
 info@metux.net, matthias.schiffer@ew.tq-group.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_152159_898561_C2638EA0 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sIE1haW50YWluZXIoUnVzc2VsbCBLaW5nKS4uLgpXb3VsZCB5b3UgcGxlYXNlIHVwZGF0
ZSB0aGUgZmVlZGJhY2sgZm9yIHRoaXMgcGF0Y2g/CgoyMDE564WEIDnsm5QgMTHsnbwgKOyImCkg
7Jik7ZuEIDExOjE2LCBBdXN0aW4gS2ltIDxhdXN0aW5kaC5raW1AZ21haWwuY29tPuuLmOydtCDs
npHshLE6Cj4KPiBTaW5jZSByZWwtPnJfb2Zmc2V0IGlzIGRlY2xhcmVkIGFzIEVsZjMyX0FkZHIs
Cj4gdGhpcyB2YWx1ZSBpcyBhbHdheXMgbm9uLW5lZ2F0aXZlLgo+IHR5cGVkZWYgc3RydWN0IGVs
ZjMyX3JlbCB7Cj4gICBFbGYzMl9BZGRyICAgIHJfb2Zmc2V0Owo+ICAgRWxmMzJfV29yZCAgcl9p
bmZvOwo+IH0gRWxmMzJfUmVsOwo+Cj4gdHlwZWRlZiBfX3UzMiAgIEVsZjMyX0FkZHI7Cj4gdHlw
ZWRlZiB1bnNpZ25lZCBpbnQgX191MzI7Cj4KPiBEcm9wICdyZWwtPnJfb2Zmc2V0IDwgMCcgc3Rh
dGVtZW50IHdoaWNoIGlzIGFsd2F5cyBmYWxzZS4KPiBBbHNvIGNoYW5nZSAldSB0byAlZCBpbiBw
cl9lcnIoKSBmb3IgcmVsLT5yX29mZnNldC4KPgo+IFNpZ25lZC1vZmYtYnk6IEF1c3RpbiBLaW0g
PGF1c3RpbmRoLmtpbUBnbWFpbC5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtL2tlcm5lbC9tb2R1bGUu
YyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9tb2R1bGUuYyBiL2FyY2gvYXJt
L2tlcm5lbC9tb2R1bGUuYwo+IGluZGV4IGRlZWYxN2YzNC4uZjgwNWJjYmRhIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtL2tlcm5lbC9tb2R1bGUuYwo+ICsrKyBiL2FyY2gvYXJtL2tlcm5lbC9tb2R1
bGUuYwo+IEBAIC05Miw4ICs5Miw4IEBAIGFwcGx5X3JlbG9jYXRlKEVsZjMyX1NoZHIgKnNlY2hk
cnMsIGNvbnN0IGNoYXIgKnN0cnRhYiwgdW5zaWduZWQgaW50IHN5bWluZGV4LAo+ICAgICAgICAg
ICAgICAgICBzeW0gPSAoKEVsZjMyX1N5bSAqKXN5bXNlYy0+c2hfYWRkcikgKyBvZmZzZXQ7Cj4g
ICAgICAgICAgICAgICAgIHN5bW5hbWUgPSBzdHJ0YWIgKyBzeW0tPnN0X25hbWU7Cj4KPiAtICAg
ICAgICAgICAgICAgaWYgKHJlbC0+cl9vZmZzZXQgPCAwIHx8IHJlbC0+cl9vZmZzZXQgPiBkc3Rz
ZWMtPnNoX3NpemUgLSBzaXplb2YodTMyKSkgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBy
X2VycigiJXM6IHNlY3Rpb24gJXUgcmVsb2MgJXUgc3ltICclcyc6IG91dCBvZiBib3VuZHMgcmVs
b2NhdGlvbiwgb2Zmc2V0ICVkIHNpemUgJXVcbiIsCj4gKyAgICAgICAgICAgICAgIGlmIChyZWwt
PnJfb2Zmc2V0ID4gZHN0c2VjLT5zaF9zaXplIC0gc2l6ZW9mKHUzMikpIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBwcl9lcnIoIiVzOiBzZWN0aW9uICV1IHJlbG9jICV1IHN5bSAnJXMnOiBv
dXQgb2YgYm91bmRzIHJlbG9jYXRpb24sIG9mZnNldCAldSBzaXplICV1XG4iLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGUtPm5hbWUsIHJlbGluZGV4LCBpLCBzeW1uYW1l
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWwtPnJfb2Zmc2V0LCBkc3RzZWMt
PnNoX3NpemUpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRU5PRVhFQzsKPiAt
LQo+IDIuMTEuMAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
