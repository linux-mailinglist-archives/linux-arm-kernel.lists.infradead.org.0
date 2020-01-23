Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B655146F8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIlc4ViYXCgjfhdMxRrsAO3nbsA8YMR0KhOKPFaE6mo=; b=qeY85S4alPRd+R
	ChB957yiibDSbW10VYSar9rChxJZNhC1KdxhBi87XlVTTE79qxT4w2o8bd5w8tvUato21UFk8JRZh
	GGnO7Yz+SyCGHe8lTxfMZMPEbJbFFk4eeR4y1QvPJvgC82mRxZajxUwyZxkJfV8RwqMcOIuXguXHM
	8+T2oEdStcAbWuPOwP8yp3umiqvA7CLQcVAAMaO+CIQNuJq1ExzzktTvvaVlDiXgd0GMEdWC3gEU5
	J0HhiGowZHR5AqRrVAs4+ZNH2vKhq7AKl7hsJmcFua+AijxeeHSpNWMPLTuYtkdp4No9eg6KS9G/J
	yGvRKhcJqL/GDwTClfTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugCr-0003WV-Su; Thu, 23 Jan 2020 17:23:49 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugCj-0003Vt-3X
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:23:42 +0000
Received: by mail-qt1-x82b.google.com with SMTP id e25so3027632qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 09:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=+sYyfk2n+qS4NMdl3Vo9UqAuiI6xlOeTWYyIti0K5ik=;
 b=hVbeOddT0KKo6GOQuvzZWMbSjBYMK5i+gpoApDm7N88DDU9k7qb85keVm53gLSW8T7
 JDq9ygwaLv8amOGkNm5ietSMbJpDmIB80ktQL46tBNLbvAPcX4SbuDz/nQonbFTKozOH
 R86DkqlXkkhRzDZHQsyqUdUYq+eEDQDLlpl8OmErfsvZLow0aJ4ZTU3if869SL6nYL8/
 MaZ2T79MYU1wMk6rLDH7cHRZ7kzJNB9Z48iIIXkxKyhX0GaI1GDAsZF+v01IDSpBhtnN
 P34m0iFOBRgq98RAMpdKvR+6nYPh90rSmWfCpJTg52ZGVF5HGYW9qu+nmnbUXk7LiyCb
 lREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=+sYyfk2n+qS4NMdl3Vo9UqAuiI6xlOeTWYyIti0K5ik=;
 b=tN+cXWqZEq9W2xLR8oZUzUd4LZt3wG5llejSWNSH2HT+gykCv6BXpS8yxfu/0MeIGU
 ylKe1vauWNZuCxEbrd9E80jwb6vTWHqerK4nY1kT0K1K70p1Zh/MCr7OnBgMnV8WR55/
 oR9ddMginVG0HJlffP6oieM2Er/NLy/JiFm6ZaKV3AvJ9GNOh/0knsXE4vKjtxT43nbJ
 BgOw2mP9s3GcSPtf94jlCFvf6dgkleqltXtw6wqJuxje+ANqh205iVIbWIu1P6ZAkAFS
 Fbl1VlIG3VZ/zHGnZ4tg0/eXVUSJgnDgMC1lxIrVljp2xlwvcLlIxfXbf2sdzNH+RiGz
 trsQ==
X-Gm-Message-State: APjAAAUeLVt4uUInpLSQxugwkit0fZyCiFXtPORtLETFTUC+S/B5qK9y
 akjhpNVnLdfirxyBFxAlKDhiew==
X-Google-Smtp-Source: APXvYqwDs1vdseljV+3M82+Ba/lPWXbY6OUEEzKCzOwkCXHGV1a35jWIeymg/Y3S2CIuD8+ef/wZmQ==
X-Received: by 2002:aed:204d:: with SMTP id 71mr17284568qta.116.1579800217727; 
 Thu, 23 Jan 2020 09:23:37 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id g62sm1179038qkd.25.2020.01.23.09.23.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 09:23:37 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 12:23:36 -0500
Message-Id: <39F4C46F-6B94-4F0E-9CC6-1AB0BB5D6209@lca.pw>
References: <20200123165614.GA20126@willie-the-truck>
In-Reply-To: <20200123165614.GA20126@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_092341_148526_E1EEC8C2 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, mingo@redhat.com, longman@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
> 
> Damn, the whole point of this was to warn in the case that
> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
> the macro argument instead (e.g. ({ (cpu), false; }) or something)?

That should work. Let me test it out and rinse.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
