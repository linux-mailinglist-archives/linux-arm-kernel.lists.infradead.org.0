Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7662B9CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uclu6UfvI4HxcrFj8nPkztIytJyIyRXd2oJ6RUZqUnw=; b=kv73nj5XG6cSze
	JkcAyFpEewVtaOB7MpSb7u3sdecXQWZ6A50NQ7TmsAQlMKHsWlZ39j6HrLNYS6pGQHaQ/OFkrz1Yc
	BDfEVpl2Qax8qRnXKLr1/+UAlR6tKsFNF6CN47c9PsFmpFT1m2QjO9LtZaHm7y8rp9t4rOrON4FLy
	k2ZXcYnsiTqCFTogFR3lAztybd8IOMLm1nqoVE2nVLvb8rVGx4GShBeqNbYqXjNM81crfRLLvE40J
	VxqqbTQm/DNpij6uO8RlrydcA6NiCqqsx/vf0CzgW5/BR1C4hCZLDCrgU7ve9KvTk4AbYcKdF+KZX
	tgb5KYb607tIO6kb2Ieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK1p-00048h-Pz; Mon, 27 May 2019 18:07:21 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK1h-00047c-1w; Mon, 27 May 2019 18:07:14 +0000
Received: by mail-oi1-x242.google.com with SMTP id t187so12422571oie.10;
 Mon, 27 May 2019 11:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pgdAS9QmA+kymmNkQFCc70wQxZNKe+LAPHfdbYWWNfs=;
 b=LRJKerM3ylh4upd88+hgx1+BFJPM60FoiVq2gFGCKir4JVIqcEhMr+1Vv9o70obLmy
 6U0VbGoOKZadBoCid7j1cGTaS1D5sCGgZ2ekaEl3cJe7gzpwgIR7/Yh8VgJTREckWiH+
 Ct7i1tT6ISTxEbPGd0gZvd0kEXTbA0zK0tX1CMi3QwKTwsYcfYi6e9/sT81UXpfBF3yg
 g36U+vmt5d5jNr001ndEmF+/RMHx8uq/SmJJPewd6q/xoDpGCI2ApqRcl9a0w7uv7bKe
 Zq8OQOlwTMzeC0SaVl37zMMKWDCNpJxVBb4w+n53L3jtiJmeBsXt4bnDxxho/EyPfJhI
 vXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pgdAS9QmA+kymmNkQFCc70wQxZNKe+LAPHfdbYWWNfs=;
 b=jya+UxITNXXtCqXVKt8Mtt+R9YoVx1lAPSgGfcPcTEG4GORp/EMBtgyLM9TULHLrmp
 jSgcEVv+ftWFbzZMxASmMIgOj/7z7yGAlOQ9+Ir2d2JQZuE7PPNp5Eg6VEX8viJz7FWV
 1Z3bpRgICWX83fOpJrAdKEennBN+aKqtwPHCeWoBDxMf2E97BhNBFpf/HZ1jmLLiFwBl
 ktqkEoghR+8k8pss5X1QaE+63BcczxVsqmlvVfn3YiNL9U/Fsqc2SBmIlkvM1Dh0pBWL
 636pvdFMoflpm+HEtVDjgUeTfDUEC8UywLi3VHltnYx1bOBpdyAH3GhwByXugQ47QeaJ
 xv3g==
X-Gm-Message-State: APjAAAWSQRZM16TagCAZ8sveeV2u+zFpn2+dsxT4UNBOwPVeZ6nrCW+t
 cLAvivG8P3eL9cmhHF+pGxymAU9faYSUH8lAlV0=
X-Google-Smtp-Source: APXvYqyMXmtKIOU8ak7fRZzZtZnF43sZq/2nZIX4JJ6CVMqDmDlUS02YstvGsdCcG9uauJFg2OOUfWiobF2qL+dlXlA=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr141664oie.15.1558980432356;
 Mon, 27 May 2019 11:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-6-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:07:01 +0200
Message-ID: <CAFBinCAsf4riNYLtJQeqTCZKwomrwfNYG1puTiJq-6VRK4Z_AQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] ARM: dts: meson8: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110713_091997_7AE1B51E 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
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

On Mon, May 27, 2019 at 3:40 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
