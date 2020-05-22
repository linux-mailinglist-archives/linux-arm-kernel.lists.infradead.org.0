Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D71DDCBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 03:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ynfxo50WDgSS+MgZNgUJGWqT2tK34rRc2qcefqk4rY=; b=AE/kmX7YLsGu/I
	WQKAfTOfry0s9BOv7FlN68bDigXMGeCoOp5WEkcAiSU+N+8BYiQMKFSzirjZ9vK6QEndHbnyYBwZu
	+AKOVpwKfVawK6aVtyhFJxKzQCNeHRHQI3CNDLYkc9azPbOTm9kqBP0fO+PT/qV7wceEr6b9whfNO
	1PcHw7eVMMR84WOTNa50SJ6XpQvWokygZnqSKcaz+dlKtE1U9piRNPnTp9510JkwUXc5/cnAVlAU0
	/Xn1wcZxeT1/NenzgGDoR5UBl+g0LtoDJKsyTRRl4ON+XBDGqdb/DRXqmLWNn4m7qwJ/zd7yOnkZT
	Bv43uSxLHiFBYidW1M+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbwcX-0002Kl-DP; Fri, 22 May 2020 01:37:09 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbwcL-0002Jv-3y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 01:36:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id u15so10698512ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 18:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xe8ItSV7TWpuJ0Sj6ABqt9kZYzEJBCX+NyG4cgDQbwQ=;
 b=rT1NJtP19zASFzi0kLE9ovS9c17j+Xs/6AJSG7rK4TyrUn1MKdmSCXF1heoXnCLp7v
 1Jry0RUhwUvjEoDaNvowlunPUXySy20/0anhrmpg0jkII6/AcwE78sb6B6Wi0qDxSdi7
 kSAfW6DRkpX5a4OlT4AFrBbie0Rtsg5AQ5hvHOdEJi4wri1BBLJzEKgmXRninYDNWneP
 N5vEaIx+eXbYvWlpyifBDefbVzg8hljn2EaN08r2ggbEo+3htywlRdYCwuVp0LcPuNHW
 UuZwnZZdCqrUUwrW3JmJF78l2m5E/VXss8pH+Lu6wQvEx+86+bv1fRQU4VOkBHIJl0Fg
 k2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xe8ItSV7TWpuJ0Sj6ABqt9kZYzEJBCX+NyG4cgDQbwQ=;
 b=F3pzzDXxEDYi77lMV3DysKjHxoic0/bmZ3pSIl/mzq1j8SktyRGfQcPn/S8kBkQMkS
 6CL2RLvBD3x91J3Pq2DnxSn0moTeMC/rZVEo4yUJmLMLqDgvMfJpqxUuuHftbgEtSFW1
 667IG1MEKk9SYeSBKX+wRDgriZGhO895YQfhZ0OfSNw5pJk175kAmd6uEvlMA7rghAZf
 hzUV6ju9z73O5iG2YQzJfyT1BvrUkHqQgqsmLSpmsnXy6X7i33Kxi/HJEEfut8HjkDF+
 d3X9dtLZXWjawbFssUiwcdPiF0CaptdcavFMsfFhgp0SFSbNp0bqFdv5LtIFpGOxy6Wq
 Jdlw==
X-Gm-Message-State: AOAM530YkME6NKi5TCCRgwaZYZeuQ1VkZ88X4Hb7/rBQgNqoY4j3gHhx
 +xFRO9RXjzPKYsDLLZyNN9OHgsivUIap64c0Lr4=
X-Google-Smtp-Source: ABdhPJz4ng85HDuCoXa+K1Pjzh5pnjaHSdLkxpp6ptjdi9kX0Ew+8Xac83dsBEF9SPUCrIBAXJFkj7uXZNxX6Zf6bIA=
X-Received: by 2002:a2e:b0e6:: with SMTP id h6mr4936909ljl.178.1590111414634; 
 Thu, 21 May 2020 18:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
 <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 21 May 2020 22:36:41 -0300
Message-ID: <CAOMZO5AsCREw1OT5zzFH+pC6uyw+MOSKJFZ3_-HvDva65A2cKQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2
 voltage range
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_183657_155239_DEE78E0A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Yongcai Huang <anson.huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Thu, May 21, 2020 at 3:17 AM Robin Gong <yibin.gong@nxp.com> wrote:
>
> Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group

Please use capital letter V for Volt.

> (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups
> have been supported at bd718x7-regulator driver, hence, just corrrect the
> voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
> Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mn
> datasheet as the below warning log in kernel:
>
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
>
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

You should add a Fixes tag and Cc stable on this one.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
