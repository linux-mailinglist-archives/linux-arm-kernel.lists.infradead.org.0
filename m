Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEA0258A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvV86BaOwZm/OppO9IPRDYJqGkcN1w3T34pa2YG0HwY=; b=HTHAs1P3oZhYCC
	rsqgxAunka8P3Ns+G4SjTdNgaZn/TwgkokMIC+8hsebKssp65AD1AOMNycFeZsdq52SDxy3858gpW
	tyQzLC4UqP6ZSanoNLZL2yt/Ug+Csl3bGD5a/2kDqKR8s6VuTTjYaupVrCLZk5Nv5ZDEbvvjpHZ1r
	CzPedW7fFx43p5tZZuPFhONd0ysUDcSO2W6Eki4LWTb1H5JiLgFMFcrsMzV6sLtbsI2iwZ3QC/d9l
	Q4zmqdI7dXS7cNdYTI+fK7Dymp0a5uBHhE6NmT/cEwopPznegVXzK5etyY+wlX5wHTilnDYXgTPRD
	LZwzYvD8MhRi7Onk1e8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTB6w-0003Kc-Dg; Tue, 21 May 2019 20:11:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTB6o-0003JQ-FH
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:11:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id i21so38738pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nSMrBlQQCNOdHw6ym1MsOYq9Zt6fXAndfJkhXIkeTfY=;
 b=e7lLqmGL/6q1XC19Pu2Ax/U8nYO6HgOcM34i3Lk6Tq8xSCi3pG3Btm/qAupy9SGITO
 PhlXnLDYS6PdXnZtmm2pjbBEWz50ShDcB9iSSs10VozP8WaB+I4uIdSBIpG9q5dAz3WI
 YgAEdRyN2VfdjIOGCNrBgtEGDEbpsEr5RW5EpUQ8PkWC4mPyiuShkB5vKwwqAjkTin6D
 uwvT4ssmU227YHH6pMdQnPKRLXTKgbLpPmrzOxA9ytRcvAqLosLq21vsenp8H2FJP52w
 75TfzHr8gm6lKBfi3ccb5yxWEWt6f+WFz9ExYdynGY+bcbOqvnZhhoRJd4Xt4M7WQ1dL
 m4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nSMrBlQQCNOdHw6ym1MsOYq9Zt6fXAndfJkhXIkeTfY=;
 b=OoQhgjfGHndN5a5lXdft1q9Z0X6P61Tp0OaIp0cwb+rPKh5tMai2LIJEogAuit5+CM
 E8VDVGuoDQBalUaBkdllYxWUzb76g0XhkHRPeS0AktgiaUiFM9lP/3SeHqhP+syrGuL0
 p5R4/5vtl/0QjvFiTUcCWLYpBtjDnPDru2uRKvrJei5VuWd3FcWTkTyKBY8tlccqEvjQ
 g7R9kc15bSFc/BOSq3UfQYbPra7F+/FNexm6afDvZYFr1NF4W634Exz6M0ntN8Cty3qg
 YNQOULUwP6VGsRJx+H8XE3n6PGP1X7Om6Urzo+KL9TvqbvgD5JsfsNuMpuqX8lTqkZcU
 PEiQ==
X-Gm-Message-State: APjAAAWMdN1ci8sKl45mL1hEqbLxCHCA+VFjTxzIMJeRCunLC+c0IhQp
 xxwGQvH3U1v2Tk95g9Vqy5Nuxw==
X-Google-Smtp-Source: APXvYqxQq0PW7k4iHfJLbysFm8N/zysY7W12kduhFF17wCTuZV0Kk7FyJlPkzS8R2ktUvE4NPm+YsQ==
X-Received: by 2002:a62:5103:: with SMTP id f3mr92089248pfb.146.1558469496412; 
 Tue, 21 May 2019 13:11:36 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b1ca:3800:3284:d770])
 by smtp.googlemail.com with ESMTPSA id y10sm18575577pfm.68.2019.05.21.13.11.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 13:11:35 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] firmware: meson: meson_sm: update with SPDX Licence
 identifier
In-Reply-To: <20190520140045.29125-1-narmstrong@baylibre.com>
References: <20190520140045.29125-1-narmstrong@baylibre.com>
Date: Tue, 21 May 2019 13:11:34 -0700
Message-ID: <7h8suz7ekp.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_131138_654166_A6BCC0BE 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
