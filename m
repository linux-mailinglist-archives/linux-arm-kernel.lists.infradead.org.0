Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F5818DBB6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 00:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obZ25DSh4p7K0gEy4FpN0h2Lhe0yYGUGbs+Ha+3LhEY=; b=Ubng00JQW7J9vJ
	6Bf6nPbfzsbjCb2ZyECCYTbgZeL3YeDmm1m1GdnexP5lfDnYbuRxwMgYMfuJHOEKW0/CjzI/VHlnJ
	01IdAskZgoF+bWOGRsBSyhfT8DSY4CreCpu70Cmf+CIsNHW36oo1Mb9f8rI4/DxFGL624G0eM5AKb
	YhD4Q3bC+bui+vl+4FAcOlUXNUduS4vOZ3RomC/vecm/ObJ7B8b1UbYVA+tJxPiaxwp7A3PZBq615
	pLJzs+k1U4xt3dz+rQ8tt5p2DQhaJe0etlfZGqpGsWXToa2JuLTFICHJwG89iTrOqSzx6La/8b5y3
	UTFH0aFuS+CN9zueZabA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQx4-0007a5-Sq; Fri, 20 Mar 2020 23:21:18 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQwu-0007ZJ-Tx
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 23:21:10 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nu11so3146026pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 16:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=clkZQy76N5lqDvPEfomSFrpTluUVK0zQr3gsx7h7nC8=;
 b=Yu/8u83xc3BAK8swCPa1v47AYLOMOLAmKQCRaueAmpwbsZvhLe7j+g4VjaRWcl5977
 8fC/o3X/U6nxKRhiSjURBtP56L1M68KMGL+Rs1ZlLDmm5u4cAhnafvmSejO0Pqby2rfp
 hWfTochJhDhieWfuL68RKl+pRruYOx+rwqnvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=clkZQy76N5lqDvPEfomSFrpTluUVK0zQr3gsx7h7nC8=;
 b=nY2CFQaeQl5WuwheEa3jvybf3M0PSW09xtb78PpvziZPB8iz7XSLe6VKg2X7D/BsMR
 KpFMsTjvugLTvGerIBoO6ssHWG8uTqeiDONDdlj2J314kyDGcK3e2DZceFO0YMxO3rNY
 LSDasaA8v2VJuqiO+khEUdW0yCBIz3MPqMpLNXq4L8SrdqmxLQi66YSwR23Uxhl0zfd+
 /c1JbNSp9MLGfR0VciFD8R+lhaOtMhgDEhwQHRYUuuKPs5JWgT7KRPMB2TjpANnZ3U6q
 lte9ZKJ4um5QTkYUo62HguDRwpLzs8XJmajRFwMlV24X9B2osnq+3Km06tESrGSNBuHf
 4S4A==
X-Gm-Message-State: ANhLgQ3uWhTc2ygBWVhe9H+iUsFdqcqAG/+rpqx0hzbaEXhzJuj0FowP
 IX9nib2pdaSczUNvv40L1Z6wTg==
X-Google-Smtp-Source: ADFU+vv6GHvXzRwWkdEiLmO10nDPyub2Yebvzznb5KqbElkhWXj+ptG2lYIyNxGql1P+Jw5Jn/kvcw==
X-Received: by 2002:a17:902:8e8b:: with SMTP id
 bg11mr11012475plb.138.1584746467739; 
 Fri, 20 Mar 2020 16:21:07 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id w4sm3427639pfc.57.2020.03.20.16.21.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 16:21:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200320145351.32292-19-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
 <20200320145351.32292-19-vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 18/26] arm64: vdso32: Code clean up
From: Stephen Boyd <swboyd@chromium.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, x86@kernel.org
Date: Fri, 20 Mar 2020 16:21:06 -0700
Message-ID: <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_162108_993001_DED0F96A 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Vincenzo Frascino (2020-03-20 07:53:43)
> The compat vdso library had some checks that are not anymore relevant.

Can we get the information on why they aren't relevant anymore in the
commit text? I'd rather not find this commit three years from now and
have no idea why it was applied.

> 
> Remove the unused code from the compat vDSO library.
> 
> Note: This patch is preparatory for a future one that will introduce
> asm/vdso/processor.h on arm64.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Link: https://lore.kernel.org/lkml/20200317122220.30393-19-vincenzo.frascino@arm.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
