Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9775A7A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 01:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeDxPNc6QOycdYKqETWK2oNcL7VAHDRm3sgV0nzlh6s=; b=neo9B8o9tJJagm
	G6Mgjm9kBc1/9vKgSRKcyqHDwLt3XtwLTdxA8asjj4Fy17eXj4JW4ssgPrVYVK3V5HHHwx0Pu3mY4
	+Fc/pMTfWeGIfDvykzJKU0fsSsfaiqiiq1QriurWY4T53Fx8EW7X+Igu4qz7kHOyzmA/gKIfm9ePg
	BRTpeDX70LZ9HazJF+kOijYXptLaSvxqUDYKymxXPh4OUOBRjBXIFCXEwtenM/scEspEpx578LAz5
	YBWWtRvZ1dDO0IX66aJwzSN77qOipUoL2NRtIslru5G7wLeNFFvQGuLPVLWB01SQ+4jWJ70OSkEuD
	1kTGDYr1R6nM3o3RRfCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0M6-0000g8-UN; Fri, 28 Jun 2019 23:32:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0Lv-0000fP-Fo
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 23:32:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id m4so3251729pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 16:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=pCnZsFeXtEhsGu5hcikExC62+4Wo/EuuXi1fmzeilKA=;
 b=0VbzT+pPAZ5Cw+l50LsV6VxWXKVmzUDbFzYuh8RNn9jDhvwYrGLpdd2Zox3h+s5z3d
 NsHcNsx8UNYIl/Tvfb7cXa/FuLVj1zcEON3iB5PUkGIp07Nt8sBjGk1VhpQX63mE5GrQ
 v50tAcJD87eCeRoV0wkDeOzOz3jCuLO00fUJ3whOaPkolh4Bk6/8PU8zR+cwJsZAHMz/
 ScenEHfkRqLUKlPcxdU4QjR3X/mOrXFzVippr4fAnNlaDmVhjqINrruhID6v634TKkd/
 y9tKRsD6McBdP4RBm7SdgnNQYnubc97zKWxXjwt3g8AgXpwKyyd43Oguezk1zdCnyWPI
 r/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=pCnZsFeXtEhsGu5hcikExC62+4Wo/EuuXi1fmzeilKA=;
 b=e92wbyZspiqHwtq0wrPVIQR8pXvThdGnFQ0O1i+o3g6a2AfzKDD5Bzhb320DjXxdzl
 Vt2KN8DhLLs2js/5jofk3vdebdDQ7pYu3U6UTAyCU+sdPnfdsU2sBlgYwU+yrCXvSCQM
 U6Lg7u3kNx31GgEswOWLMVvy5/pbw+lEEvNZSYffT4gp0rTqICm6e16vEUB5rU2qk9ec
 ICVrkpbDi8Ag1xH/8/XLPtEChEqL7lf1xCC/U8G8SEMAKHO9F0Qa1iYOqv+uvRRZD3oG
 +ltaihCl6BSdbcelWHAxrMGjZynNIALg9lVIpuehsS1fNHXKe6ZwUjwj2Lyzsyr5eVlv
 K/5g==
X-Gm-Message-State: APjAAAV2OkXB0bFPZmRzWOHDemBzKlqS8NuzcfTQ+34/wPKw3azsNMZj
 JesG0PI4vCQ2fRjOgXgPI84PsQ==
X-Google-Smtp-Source: APXvYqzJ2MLMBi8iA3yNVUvYroDxbXL+variJXnbCGCuqZ3XKDF6o6+6MYhexAh/V2sqsNQR1LhPNg==
X-Received: by 2002:a17:90a:3210:: with SMTP id
 k16mr15622156pjb.13.1561764742710; 
 Fri, 28 Jun 2019 16:32:22 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id s22sm3569018pfh.107.2019.06.28.16.32.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 16:32:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: ryder.lee@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1] arm: dts: mediatek: add basic support for MT7629 SoC
In-Reply-To: <a8ca0018ac8a4c5f61a7a1efc9dc5dccd768628b.1552449524.git.ryder.lee@mediatek.com>
References: <a8ca0018ac8a4c5f61a7a1efc9dc5dccd768628b.1552449524.git.ryder.lee@mediatek.com>
Date: Fri, 28 Jun 2019 16:32:18 -0700
Message-ID: <7hy31lp9q5.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_163223_668667_E56E38EB 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Steven Liu <steven.liu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Weijie Gao <weijie.gao@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

<ryder.lee@kernel.org> writes:

> From: Ryder Lee <ryder.lee@mediatek.com>
>
> This adds basic support for MT7629 reference board.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

Just noticing this is not upstream yet.

I did a basic boot test to ramdisk on the mt7629-rfb board donated for
kernelCI (thanks MediaTek!) and it boots just fine.

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
