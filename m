Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783582B9E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jq4lpMKBzFl8Z0uZyzPZ189Lscc78Kkic/nK7LqKuQY=; b=GwrEVtjhKYhjE6
	2Pe0TXSIvPbsSgpq3zKRWh7tR1dFtdOD03gwy/NDM4y+NGV7vOQ6DDu+AqCZ/zFbZp77VD0GDuMfK
	HNeDCstw3lYMvo+mNJTosKJRe4OA9VvowAzdlhdXrzTSvbYJLZrQxvVljYtGPglpUIWrBGoG6eeYt
	rKDseiLxoX1cjuPr2pMYtsrTB70IHFHA4UrKW/9973FeN8FeoDGNhoCFW9vb6dhLp4c/btRVjoIsX
	izDM/Ts4Ktzf4XpaSlCtEc1ezkWO4wO3ckjW0t3NQB/6CWAceZsRKyKsqqTZv2t6+eBWMWwFklLPZ
	BdBXL30iSoUdC0PjgsNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK2x-0005ya-G7; Mon, 27 May 2019 18:08:31 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK2W-0005WA-5E; Mon, 27 May 2019 18:08:06 +0000
Received: by mail-ot1-x342.google.com with SMTP id l25so15476114otp.8;
 Mon, 27 May 2019 11:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Z8u+Mb6Dq9130guFLmfDlxiV/OSJhxaQytulTManxM=;
 b=Md1/iNe3wpFg7pJRiiTPYACJft0AqPYLSVHS86cINONlNtBMoS6cwZSCdTtBdoIdm3
 565psYs4LGlFtaqtO4X10qXVS+90VoiFiw49WiVbulPp1zyKccOaMC//TjCYszO7YshT
 J8RmIhICklmIIASLuxIvS0m4qoT7WuLRhr7q0jKK/FIO3vRGmiMMNGz9iizEuPlmN7eg
 LnJ7T3YvtS/R7phhUfIOWg1TgkLpecleLlJYMiPQYj63M/cdb1DX7ukZJG1PGDTaZe90
 bXncpZ0Cq3feoQ6jOB7cghvn2/6dEhWqb8hCCMLRNm92CdyXdEew7H5rcIO9HxJBX9Vp
 qyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Z8u+Mb6Dq9130guFLmfDlxiV/OSJhxaQytulTManxM=;
 b=nWXUujcE7WFUM+56BbEFy2q21a4Pj6TlmiynvK+zb3GVpR4bL6T6yLABafo3Ddb6mT
 tJH/qDVZD6BOF/kSwyNmsns8aRf8wFUoaD6C2WjmFaSiDWOIKrhpvGWGAU72vJsYgcWo
 AMxnqTzrOnOHDngZa4OqXGGoAQJRnYw2Y62wQLy0dntVOME/L+8x6SqoJ82OMKLUV33Z
 SzvZu3B2rHAJobf7BRycxDR2KW6XJcOsjzzIhjnzZNKsnc/A72YIp//4FbFUqPmNpCcz
 5cLDHwwC92TyKmttt2yQeR55Ise/GBAEuMsu2hgeLyOdw1n1HEr5A+N8U1DKNQazdvQA
 wgng==
X-Gm-Message-State: APjAAAVPqddWHEkFe8IFTkyUoozymqM/HfnGf3/i2QdOlJV8Sjrpgfqk
 2sYt7zH5/90u0G88wkzTMDVinWNmHO9hSclutDQ=
X-Google-Smtp-Source: APXvYqw1KCJR0ykK+JZRq5RQEXEcYYqCwA42UGA6D3HXVktBN7+YLknn2jRyumOKZM/ijc37rS9VkNSx4uS8BgfiZng=
X-Received: by 2002:a9d:744d:: with SMTP id p13mr50955091otk.96.1558980483396; 
 Mon, 27 May 2019 11:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-11-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-11-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:07:52 +0200
Message-ID: <CAFBinCD-rkB9_LDHAUL3oSD2iSmKHYctUY3_ZYdFNgfh3X4_NA@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] ARM: mach-meson: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110804_382885_042CDE6E 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:41 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
