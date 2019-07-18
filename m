Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B46CA20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 09:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8T0Esf24KFLBBJO2m7hPMAqqHJNM/8P1Wv6IsDHKn4k=; b=u0ANYJvc1jEMw3
	KCyK3fQkejJAltT4dTWNsPP80o1wX+l/8dHpdYgaInnyT9i6dsHDmFf0o/YgHzbop8RDo5MpE+YNt
	9bOm57rMgecFL9dTLTr4mthT9d/bWSPg6G92Htbbw2EGyzPzURxeq1DBuDs7HWNC3XsJ3fhymqpeR
	dZ/MPTSfZYtAEskRqDppADkPb9yhnkYl5+xhPUUX54usQtNKKrNOBMMYbCVWGfTxJrq80VFNEaVuU
	b+xyR1qa8NK66vckUYrgQm2RDFEBrfuXilNX6NmCeir6MoRNFxRj2rcttKt9UnUdNRMiCXst833vI
	EezPwcn3SYca8YVxq3Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho13m-0001Nf-K7; Thu, 18 Jul 2019 07:42:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho13Q-0001KT-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 07:42:17 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so19659693qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 00:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nzmwtsx5tycGhb+4LFPxCL+N+c9XhlGZm/gifhTU4EI=;
 b=CEmXIqx1zEiZseyaLHbAZg2eYr52IGrxCiYtf3WdbIdRfxNALuaF360H38na2HHGeT
 kJhvHRHwPkvdmaSFb4Ut1bXNNSwq+Az21CQwDcXz/2aJYfDrZA8FLv0Whf7jcqWPgUP7
 cxDS052qMR+IQox9Kk3hORyh7saHwYg+y7qKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nzmwtsx5tycGhb+4LFPxCL+N+c9XhlGZm/gifhTU4EI=;
 b=npoeD8DRyIDZAgbjh+3rsTSTNOncWyeyzSh+/4IbYOe5LCkAPjYpjnOYjvBC/sRBro
 WmtnoaNBPokapq6phql8TOYwZUcxxVONeKLVcDf9VxyTDzqzOmcq0nN/gKdxesRdWGta
 poSud2y65rhKERCy1hwq4NSV4FIGVFm9yJRNcqsw56M6LR4PRb5zrYNNIMN/Hgu4gBWU
 De9hbcOle6yLWNLAaWjK1QQ9dYAsfxiAuGrL8CTAgPxv39atcTkg3UB8hUznC5RRY3Mw
 O22g+V4fCEVe3FHTbS2qxmV3qy7OnX4uMIuhuW5ta2U1ktIqgfizoD820ow21wb13AKu
 qodw==
X-Gm-Message-State: APjAAAW3zytbTFKLwNY4RdHfniiI3GVQ69nxhIyAwIFaGwR20VpKwtRg
 wXIkPCJPN0+zbbCLXQf4teAijoII/tJw4CaTT7/I2W7l6KM=
X-Google-Smtp-Source: APXvYqyaijtootjYh8DupgYeIQoCu/S4vDUdZBI2rD3C+dIP7BgMxJuxlurbcYyMNzYZGK8otJ+FaVyHPZ59zlJBHRk=
X-Received: by 2002:a37:a603:: with SMTP id p3mr30398001qke.297.1563435732883; 
 Thu, 18 Jul 2019 00:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190717061124.453-1-hsinyi@chromium.org>
In-Reply-To: <20190717061124.453-1-hsinyi@chromium.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 18 Jul 2019 15:41:47 +0800
Message-ID: <CAJMQK-ga16BekNgZqDm2Bz4xw6O6Jt0Zaw3vcUhrvh6s570WOQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2 0/2] Use cpu based scaling passive governor for
 MT8183 CCI
To: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_004216_252397_AB46616C 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "MyungJoo Ham \)" <myungjoo.ham@samsung.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 2:12 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> 2. cpu based scaling support to passive_governor from Sibi Sankar
> https://lore.kernel.org/patchwork/patch/1101049/
This series is tested with previous version:
https://patchwork.kernel.org/patch/10875195/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
