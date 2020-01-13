Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F336139139
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iQOanlucQzmiQI3r1XHI9PSdQdVrEq65CHrB2OY0LQ=; b=DiXxP1jBGXPmA0
	29jzUYBc6itJCiq9jNqv/6VrOXWZBBRqHHM9WzUNG8KlRjhbCl5/czRE43bdyVujXhp07q14Ey5KQ
	RGPPGV5mzkwidg4/rlv7jyCo7UXe5IcGc1XhriICGQKgEORqcpueVuheUaMY3E6Ozg6ANDP+sb9xA
	EsV0CMzvbvonyv6lyaf518zGU3fBzSxd6ItkqP7BteavmjIqWYmRhDCoZYIrFaIAXQqGXcKEKi06d
	JXF3bkLyJ7GZytlAuA84GIMFxcrvMOUqNWhulGoOWwNkX9SohA2KBht+kVhm/f4fvcXROCa9gWOvu
	++5LjOYrtbcvtDZJVq6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqz5o-0000yZ-9H; Mon, 13 Jan 2020 12:45:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqz5Y-0000qv-I7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:45:01 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D93A2081E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578919499;
 bh=h2vZy2bWnuOeobfvrsF7bMbPSggmUgSHrXcLvhHe7Mg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=N3RX1Ypcowo3Mn9FIQ+pzjVoLwvqsf9arFl1qUMAXxaaBcdYTG68XQGB5xsWms88l
 bbK2vvlRiC2cj4PSYMtcFYZFLLZl55attJdMpDDR0EjvKPv/16uh+PlyAF8EJGi1Bw
 L89YXJbkwfb6hNJvw5cvHzigaJ0zTf/7EMSoS/pc=
Received: by mail-lj1-f181.google.com with SMTP id h23so9873721ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 04:44:59 -0800 (PST)
X-Gm-Message-State: APjAAAUTy8Jz27tJKSFiKlyL/QmumKcLSC+rIqBov4uWJj8cjfiM2KoM
 tR0d44BOkeA+DWMRMZCkOzVtOK/k/xfzwcSVHDM=
X-Google-Smtp-Source: APXvYqwKz1lxjQq9n3Z7zbCk525GAplUZqZxAGOd/qz1ruUmT+zfym4LTKRN/pHQEyDCiubOy3VWR5NbxzECZmZ9BrA=
X-Received: by 2002:a2e:8e22:: with SMTP id r2mr9922935ljk.51.1578919497737;
 Mon, 13 Jan 2020 04:44:57 -0800 (PST)
MIME-Version: 1.0
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-17-krzk@kernel.org>
 <20200113122902.GA15939@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200113122902.GA15939@e121166-lin.cambridge.arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 13 Jan 2020 13:44:45 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcNJ5QCabPUh4kcOj_9Gj2SF8+JGtSJu8cLEp0Ciqy96g@mail.gmail.com>
Message-ID: <CAJKOXPcNJ5QCabPUh4kcOj_9Gj2SF8+JGtSJu8cLEp0Ciqy96g@mail.gmail.com>
Subject: Re: [PATCH v2 16/20] pci: exynos: Rename Exynos to lowercase
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_044500_618067_B6477F65 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 at 13:29, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Sat, Jan 04, 2020 at 04:21:03PM +0100, Krzysztof Kozlowski wrote:
> > Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> > name.
> >
> > "EXYNOS" is not an abbreviation but a regular trademarked name.
> > Therefore it should be written with lowercase letters starting with
> > capital letter.
> >
> > The lowercase "Exynos" name is promoted by its manufacturer Samsung
> > Electronics Co., Ltd., in advertisement materials and on website.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  drivers/pci/controller/dwc/pci-exynos.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
>
> Should I pick it up or you are sending the series via another tree ?
>
> If so (if it is not queued already):
>
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

Please pick it up.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
