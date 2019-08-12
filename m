Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD878A6B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 20:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHEQytxiWs2yMRSTz/jUDlCbXzc8HpZ6WquhbCxPx8w=; b=Zv1VAwjkE/CyCx
	H0+z7scGDMlTnPqECf9+0JqCuPLG4uY1qNdqRkzSI9dzJ4sBamvvVHI44okEc5JAJWXj/fxdADEBY
	Ze9feOy7fEHWdm14fdkkYnziZFi5qZF2W8ZElbBtM7qSMwoZ5QNYAa/vxhdSbObBYW82c4rxtb26Y
	v8ZcqYsPYts2KS3Xf1BgS/ztpziaEBefH2rADzn3AkwYLjy6psA6ZiFlUJmznfFzXCVaNWxVaQ0C7
	4V0S6ug+zbrFelYhtx3kD/oR0sHB0NEvr+lsYssr+ufouHjjtV0Ql8Nj0t3bXVR0RrYFBSn5eBtKs
	DoqRdFpMghwP4Q9ls1yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFWt-0000yl-Cb; Mon, 12 Aug 2019 18:58:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFWd-0000y8-K5
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 18:58:36 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ED5C206C1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 18:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565636315;
 bh=R7sUkUsIyBVyM0xgwC6ssrjHDpSaec6rd52f5BsBnQI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q/p1uiloLNDD1JaGaTSp7kW8zk6vGVCwMeJHmjWRFZ8xwSTKj2dI3Ll9JxRE/wjhA
 0vRCmaNuDX7okExuF58HoslSn7oeke6LU1HaWU5rDPsFMYcd3uQH/hUXkooSdx8cB1
 vpIN7FKvtlyV9vVkX4BVNAmJyb9jELe++tKI/mho=
Received: by mail-qt1-f171.google.com with SMTP id b11so4127621qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 11:58:35 -0700 (PDT)
X-Gm-Message-State: APjAAAWFoDxG2dfl+hmytfwnI0t6nALgOJR7IrbO5zO8pjkNC/7R+VuU
 bLIwzirN+5F/FS/ios8jqo4/VUsE49tHK4N6Fw==
X-Google-Smtp-Source: APXvYqzFjlTyS2m8jvSL/rEOx3inN5YXegwV3lD2MVMO9vmnvZIOtTu5uyTMAAy7H8+QyiC/chnN1YS23chwygY3KUU=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr19765999qto.224.1565636314436; 
 Mon, 12 Aug 2019 11:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-2-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-2-stefan-gabriel.mirea@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 12 Aug 2019 12:58:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkTzcUnDCoWH9DP9LpwpdBh3wWHzPVfg=ieTTZet92pw@mail.gmail.com>
Message-ID: <CAL_JsqJkTzcUnDCoWH9DP9LpwpdBh3wWHzPVfg=ieTTZet92pw@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_115835_677851_05375662 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgOSwgMjAxOSBhdCA1OjI5IEFNIFN0ZWZhbi1nYWJyaWVsIE1pcmVhCjxzdGVm
YW4tZ2FicmllbC5taXJlYUBueHAuY29tPiB3cm90ZToKPgo+IEZyb206IEVkZHkgUGV0cmnImW9y
IDxlZGR5LnBldHJpc29yQG54cC5jb20+Cj4KPiBBZGQgZW50cnkgZm9yIHRoZSBOWFAgUzMyVjIz
NCBDdXN0b21lciBFdmFsdWF0aW9uIEJvYXJkIHRvIHRoZSBib2FyZC9Tb0MKPiBiaW5kaW5ncy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEVkZHkgUGV0cmnImW9yIDxlZGR5LnBldHJpc29yQG54cC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuLUdhYnJpZWwgTWlyZWEgPHN0ZWZhbi1nYWJyaWVsLm1p
cmVhQG54cC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vZnNsLnlhbWwgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
