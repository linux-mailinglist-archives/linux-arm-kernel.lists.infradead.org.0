Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C94F1044ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tU3WQR9sxRBiqXC3G8CD3xOmWSPUyFTHItChu0scRaQ=; b=sg0kNj8uBy4sCc
	uRiE4DrF8bNHFACnZiZPIa4DtDIhYwD48IJbkA5Fo7pyYGAheTdnrxS4xRJBr6rKk+clj5GXjAArm
	AHS6Y866ZnIcQLgP239W5gvmgq8PAfxty4SoDnwxR6rUdwMex8MRnktKC8CL4b3ModxdPJw5zjp+X
	KTpS/cDWFDnYNURb0RQO45apV9+xuofiXlF4KoddVXFy5cFTDAUaCnHpg4Y0XEw8GSoqswNzMqbbd
	2fB77oPXSiwPxvuvCDmDJXcnM/5huGQ3ueo+frlY065dd772oRrbARhWJfWvIszue6Pa8nrXrUJtQ
	FmQ33ziKEu4MKoUxyaLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWTq-00019R-1Z; Wed, 20 Nov 2019 20:21:38 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWTa-00014M-2P
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:21:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id f16so624927lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=caC3q0Im5rpn3jVBjSdb9pB4f6Xutg4Ojk0RRX7E3Ok=;
 b=bg6mfY2zpiL/RfVmwZqFbQHz/Rgt3PXS6DXi0qCBphUJaLHDGQBguI6vIaNzt+9DYu
 ZokEIAxWE+lQr57hhnp1G4Fri2750tAnxHK3aabWXBWU8SM7ElfI+A0k3RnQznb8w/df
 Vs0JPiDxhlI2my6BeVn3xwVwCG9xA2mOXFTG/ZRgl4lHMEN6Eh5RSs9QT1fzfoavs1ln
 665fDynlhkzVgTRCkgiR6aG/gT/vKDN0fj/Rkt9WGkNeQILCVxIXt8mv9eAlR8/WXvSZ
 CmCMqO67FAB3U++aoY3tQQH5jRzVk1fSVjhuKIGlmyY9nFk2kHJIABK9VSwfeSvnsYCN
 bz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=caC3q0Im5rpn3jVBjSdb9pB4f6Xutg4Ojk0RRX7E3Ok=;
 b=VRy+wc7GwfM7g9vnmZTtn/2VeMeU5w4bW+QWuz/fVl1EZ3xkl4JjPmdNkzS29/BUEA
 1x9bnj4JJwRk3Sbfcth6Ce3IgN0ftHFoSNQ5Yvv0CaCpHjyNNvilW8I7UKwWreN0pkFI
 1xibmOslURRmvoMVH9RQzeerYG80RLJRz8v3b5nR/hcsrqCjCKPL4uI2Z21dzubV7Ci5
 TajmQeIg6lWYlDbS84+//QSuvcesXBlfhOdoI/bN9TZxtmtUe+Pl+ijjPrTY3UM4onm9
 9y1bdIxGCqsOfIGHFsFE9Y0bWXKnGQUfzcH34fJSvrcXbyz2LQcnwQpgpSSBgSQOPUsy
 jGQw==
X-Gm-Message-State: APjAAAVI7r4pqiG7rTeMD0JwNAkTHm/WmXCOFmLr+9xFSLClQ7g5rt0V
 I29unJK7eLkTTA6vmvjrvil7nVakVWBMVAexj5PAtg==
X-Google-Smtp-Source: APXvYqxBuwInWxqkVn5H7A2OVGPx7wX8ODFx7j//AFHuRlDKHd1fd0fTnmOJMAEpYK3rqOamjhcnY7Nauq736y5nZOM=
X-Received: by 2002:ac2:5b86:: with SMTP id o6mr4491477lfn.44.1574281279989;
 Wed, 20 Nov 2019 12:21:19 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-3-stephan@gerhold.net>
In-Reply-To: <20191120181857.97174-3-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:21:08 +0100
Message-ID: <CACRpkdZSwX6jdtE-e3v3BWb5-jicL=9uXnvNJVchjKHzStWg3w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: vendor-prefixes: Add "calaosystems"
 for CALAO Systems SAS
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122122_158813_D822C0F7 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 7:19 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The Snowball SBC supported by arch/arm/boot/dts/ste-snowball.dts
> was made by CALAO Systems and uses the "calaosystems,snowball-a9500"
> compatible. Prepare for documenting the compatible by adding
> "calaosystems" to the list of vendor prefixes.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
