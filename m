Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921531B852
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ry8uDYiKerX3rTXIUMbxrD0rF81JFnHJqOaFmBk/Mh4=; b=RjrFkv8lC9Hy4B
	ALqeQthmpT6atjKHDSWOVbUS4YDpAI1a/nwI/4cWN//Vqcs0TDVh5ZBmer85zJAtJ9Z2kCD6P7n9c
	l7BbO6zCK7Jsrcd1Is+QyGicI/nFXLv+zgWLocAqqva1g1oglzEtOIbcPJc1hJkM6PNIV1J9leE6H
	/YVojSJBtyKC2c21PSZgIgPRUMX1F687DKBJxGE6cKeJzLOBxuQx0je7F1GLMAnXrldaYmZQfmBhM
	1gMxTPYckSFFq34ruGene19qSl/b3owAlwIn3icasN9XKDi2YAQolA1/tZZ97pkYarC7TUS4yM0r8
	9xacYE0H6ejtQQ1810/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBxh-0000ac-2I; Mon, 13 May 2019 14:29:53 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBxa-0000aD-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:29:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id j12so17131132eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 07:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8FLaTD9htTvtftbkGxqy7UQEd+WdiGpfqFwmirkaJ5Q=;
 b=RDRBYlI9hF51P1TuruS4vslT9QoliL1XMSvm4GAbslUC0iiz+rfnep5QSzcC5QSins
 Mf5FcSIhaYbx4FN/Katdr/4mwHbM1RST11EDiA/gl5mIuq7mgAqBNTKn7SJz6j62/DBc
 fim/Nae/7qvUejgZFsQul0QaZqY0dzy65gHg+o54a6U76xv/y4wHn/EoOUfzxrBmgUYA
 1pm5BTbpyfAE2h+GsyJYQMjtlEoR4/r0NJEeVTC/cD1OJ6B3OTjpRxznRTusO76VS19j
 spFmZ9gdFYMxENsDKE9FhYe5yhCbqqAEyfIcIcuhkhkB6F7YS7M0NWT5riBO1oMbxz+D
 jADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8FLaTD9htTvtftbkGxqy7UQEd+WdiGpfqFwmirkaJ5Q=;
 b=mJUKHJt2ontkwhN4yC+1+sGPd2TORTctA5aUZtqToDXOvQVyIymDe3QiMwNDRPKbSJ
 ZTse+nTNsteBzmJVHwXbbNUppbG4j7DGwBJl7A4tIOpEBt89Ek9ncrZzkMdoKWYwD+Lu
 vIFztMKZAgkJoOmQCmoTbweOzbi8LKQgNpQMg48BYX5BMA53xt5wKdotsT1OIYa3trly
 xPiuSNBcFAUyeA1lK8EJyRq0QdRz4be883GxRpYpBiFlLKYR5QS/HcxANa8/DdG6V6jH
 a2r7ni6BOi5ftMawkOaMnj3dZPQ1PMto9szbsLjFtz+TcNKPw81vrlejobUZm971BL8r
 RodA==
X-Gm-Message-State: APjAAAVYEONtmdZlv/jhxS/nlJgUpBCAP+7V8DTKDrkLgqbDVOeNZFA7
 9dD9kRkAV28bhZM1L33UD6euPNl9B6dKkp2PGCE=
X-Google-Smtp-Source: APXvYqydf9/D8f+92kIqnBdrsMPORxUBEPI+xrZtlyIJ5Yjd/frhsy+NdC6EgPaDVahBS2yMg+iQVyYzrlspk8Jad5I=
X-Received: by 2002:a17:906:1249:: with SMTP id
 u9mr23173207eja.58.1557757783673; 
 Mon, 13 May 2019 07:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 13 May 2019 17:29:32 +0300
Message-ID: <CAEnQRZDSTuUMrc9AC1S2zfo0PdQ-v35GmNrf70Zoasid_XMJzw@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_072946_160894_15C4DA80 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

<snip>

> +
> +static u32 imx8qxp_soc_revision(void)
> +{
> +       struct imx_sc_msg_misc_get_soc_id msg;
> +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +       u32 rev = 0;
> +       int ret;
> +
> +       hdr->ver = IMX_SC_RPC_VERSION;
> +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> +       hdr->size = 3;
> +
> +       msg.data.send.control = IMX_SC_C_ID;
> +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> +
> +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> +       if (ret) {
> +               dev_err(&imx_scu_soc_pdev->dev,
> +                       "get soc info failed, ret %d\n", ret);
> +               return rev;

So you return 0 (rev  = 0) here in case of error? This doesn't seem
to be right. Maybe return ret?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
