Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A29A1B533D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 05:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDYw42uyZQIkMsPpFBaY5yKAvOT0x7LAul+0hSRLKl4=; b=Tan9kYi9p5yZzZ
	OB7+X1SjEGCpIn5xsXaQlCeNglXI8e9kwpnxNAvoZuYQiyXBiagZsHk54WWYA+AcNSiF5SolojAYp
	Dr/7Dp1q3GwqDgukW3yKanhd5SSAcWxRq3mGkdaqIWC57aui9cSayp3MZ2SCH7mfu+k2NSYMlYiVc
	apweN63JjgUncbZtn0nbUvRAnwTar9hNrr6bbwmDle3SeYMS1h0BX4JFlL5tfoVOxIMadVljvXUTh
	EMfFVZ1wMwZdcZlQ2Y+L+ISV+3hZcqbuvNJbX6NAjcbnyLYdwU5nCj3k2Vt1z3j3ILrvApuCQcrnD
	j/FHiYt3+0MPssZkAsrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRSrV-0005lU-Su; Thu, 23 Apr 2020 03:49:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRSrQ-0005if-5O
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 03:49:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id j3so4682538ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 20:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4JM7We6bunIz+g6XmvFn1IEzfMjm4CKv4LN0v2ntOLM=;
 b=vM2gdpRXS9VtLSOzF1MYlXw9uRJK2iCEMOidXL7Cd2m1r+l6JqVIcz4yw7Sn6kEpxz
 YhUiOFl1DrRtCb3wSY3quz2bfebzhZlp/m050rTL3759vJE6jvvS/smNxar46rWz5XP5
 57HvP9A7GQTrQaG3CVBFsyxZHknrZePnfrdpNTE8+7ZaiXB8tgfsZ8pRZwKoKMupswIa
 OLolrwraOT4lIwVEBt6Owhd4Uq1hC8PCP1jHjdnS1f6sk+0Ta+8DKgAl6KYyl063vqqP
 bTg1/DF5z/YUI/tzRbm9r+GGW0pioNenPecD9i6WzEhLyGUsUkfgy90/8Xjxse6aBHzv
 F4Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4JM7We6bunIz+g6XmvFn1IEzfMjm4CKv4LN0v2ntOLM=;
 b=oorUZyFctJmlfdG4UrspXc5z5kQICg1nZ+mGXwEKiy4dWfGMcWiVjvZD3hDvo7mupA
 /3NGqqF67ehCTkBW5pWmbNV0PYb4roLXAgsTbrijd2s56B7CkxJbCwyb/4Ki+KAxqyDF
 iZkTQv4SBc0SqYBzbGIr2JD7FbD2zQdmZGa3Ofe6fQ/Z4csrAhEMpIP8Ly1RSciKHjAO
 kGRR55+60SAObyH+5j5Da4BQeptxodKs5koVE2i6DcVTgsoKnSIHLD/c8N9DR1Hlfz/H
 SFSrY1ww1DbkZD8HFk8B1WQ7LBrh7XnBdHOxn9HIsiKFXCzbL7CuCvYnBC91auy6Xf/p
 oKjQ==
X-Gm-Message-State: AGi0PuYJ+flOpJ5UTnKx9emzHuX3pauPYsUCkt6KRzpYHYPoYEW+aVA2
 nYyIVOCcVPQycUQ3RhFP0ZfuVlHIY3QjF+wfUFzlr7aa+T4=
X-Google-Smtp-Source: APiQypLcgS5aDreN0N3Msp5Q4hhsUyS9j9GgWbpEW9yptpqpZXWyGyn6hEXXB3uaEmRS6JG5VFOSwC3Mfg8DKu1GKa4=
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr1071769ljg.269.1587613748658; 
 Wed, 22 Apr 2020 20:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200324144324.21178-1-aford173@gmail.com>
 <20200423031002.GH8571@dragon>
In-Reply-To: <20200423031002.GH8571@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 23 Apr 2020 00:49:52 -0300
Message-ID: <CAOMZO5B3OL3_Ow_gy_a4PD=E6xaOWvOAHw-aDDB54E51UajQ4w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Beacon vendor prefix
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_204912_210606_1499D0C7 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Adam Ford-BE <aford@beaconembedded.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Thu, Apr 23, 2020 at 12:10 AM Shawn Guo <shawnguo@kernel.org> wrote:

> Hi Rob,
>
> Are you okay with this?

Rob has already applied it:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/Documentation/devicetree/bindings/vendor-prefixes.yaml?h=next-20200422&id=f756619f26edf74ad55d2151a6757a260e660fa8

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
