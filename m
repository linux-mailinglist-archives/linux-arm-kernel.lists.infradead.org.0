Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B726AFE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50U/GEbCmFVuK6vTrSn/ytNbqBcU4Pb4UpP9kwJmNZU=; b=olhnmAHnlTDvFD
	RPN/7dHypM68AVqp6cqPTooxNw+MyNjJp4UxBKh0me2ylbgfs/qsql078Wm/FXwSzrZ7LAQqyEAwu
	vJtMaeCM9cngW8AbxvLWDGrdjn8bNIpuovApWD5Flbc+bquCeeYsNxjWmRBg+jPF1tkTfJFPxYUvd
	zgMMgTrmQ3K3LmbyBXFfxoqYPkN8hFUA9TL5OpbMQBUJzediGF10XpSe1UzbP1CWB2NiNV8byLIjD
	u8lqC+Nwv4CBA2FK4E2adwbgzGUsQIJnAtZPHqpiz9ceagN/u2DBpPIGh0wlPrDQwvNv9P3NIWsNk
	VFYXdHSXh4sZuyr6l88w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnTAj-0002hb-Uy; Tue, 16 Jul 2019 19:31:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnTAW-0002fj-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:31:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so21153383ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TR0srzV8QRgbq5yy1IYgdGPuZtmZLkEMR8eCWBvhLhg=;
 b=Vm9pQlSUdxrt9cfig9nrNXzrj/VI4vKXx2tfP2mlwUjLnd2HXHFHTnEUYkvwMAosFp
 uQGjbkglZdqb7FLe6SkrXbBZsMAKjv7ukiTLMTtQ8fHtikJhjyBrDqFPpvuw6oZqz+QP
 eI5kKKSbcgf070CKomC+gRkcTKt30GMW5GWA7eshDg0N7IgM67P5RWmcVUUBOSwHCiFb
 yBZ4ZpZrNihFf9ozelhUJB9oIEr47+vhVccZ4N5VZZAEYhycVHrUCP2ioqv2D8dEbV10
 gn7TsD70BZ2Hm1/AfHCqRFnsbXHynsmdSBhFzBwaLv6r1BWG9VTs4b6izWAwH5aZMMPy
 ao8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TR0srzV8QRgbq5yy1IYgdGPuZtmZLkEMR8eCWBvhLhg=;
 b=Q5Zesdckmv0UIEZCf9q2Y6cIhqcMwhgiTYYK00FgaEzvoMWRgEij9bkmY4jI8rawbr
 sZ1yDRmdxa5AgsmycKZbYxc4UXVe3GK/25TxX+cnvz4TYWlybRmJ3SzYaOmUde4Jlewy
 EM7e2ogceo6ABzOHn7ucyGEuMN0GHhFe6vNzvQfVwJcl41QPkKHDdcfsmrX7qQlxnP2u
 eN5Gt8rpxdS9/b1pGrUvrqaCXTvjb/uh1mtyec5OD0z9uhfOQX6SLOtwdOETmxLyS7YP
 t5uJuE25oWkHTmGtxN5r9AwlAaM+M9lIt7fqBgrwFNntrUsAwskrNcwH9jjawPdLlo2n
 EkeA==
X-Gm-Message-State: APjAAAWx93Z179vnPpEpO4mmYp1lEqQynZtVob37bMtS4Dlhu9+AbC7C
 QtZ6uRN0UnZ+2G2EG61v4Nc6ITiDKlHehu0Tc00=
X-Google-Smtp-Source: APXvYqxZrJGUj9hm678NruPq7IKciIkLmbqKIWs4CR91XeQQvh8qRE7xS2kDRM+zaCCIFpndGiDjt9ndBVSwuOtQjhE=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr18422899ljb.211.1563305478606; 
 Tue, 16 Jul 2019 12:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:31:15 -0300
Message-ID: <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_123120_450165_EF0E934F 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> Add <soc>-ss-conn.dtsi with compatible string updated according to
> imx8-ss-conn.dtsi.

Subject and commit log does not match what the patch is actually doing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
