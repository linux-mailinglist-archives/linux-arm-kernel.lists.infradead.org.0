Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52FF895C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8BumQco4XgYGgorcs4zC/ST6DHrp5jVS8zT1fzOexU=; b=dw+6l5Hg8ae9d8
	e1X2TFM1mFULn6nEgCROraTYGBGOEiujHUtDzJ2gGCS6+fydQbrb8g0plmOhyDbulFoHiqP7GPs4T
	PLXP0NNYZyIaU9ntUQdT7leoYncznC0vlQZIpwODPmOwEvmlNQL1qgB6yGymSEA9Nk2sy42Qlo1Ax
	/X/Fe4ac87Uxq+EHJEu/pFRkikL+6OQG+BLdIBzwVwXXfSmZuAOby/ji9Lt5jqJ+115OP5TFXcAdr
	x38gROPN67AU02HsEs90+jE8iy4I+i6tQVb2Yxqlyn0f9sZtKncd94iyDNwNZbdsoWlFahL4mLD6U
	4rIv8+KVfSSPPJgUSxLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQIP-0005OZ-0R; Tue, 12 Nov 2019 07:09:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQIC-0005Kd-LX
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:08:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id r4so12670678pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 23:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zK78FnAOmv3761AstDJXelt5t5xR2XRW77fvH5frBqE=;
 b=EsEiW+5kyUCExkdffD7tH/HTw0VFRrIgj4HiXF8XKU+s8+YxXn15j5ZruCiQly6Mdb
 q7GX8wD3efvZPwCoSj7sgXxq6EuWXVchXS2z7IqZ6Qo1NVyCKPGhME4O6BACvUwJRwkm
 2N9+FGswolsCy1Dl5C1Xua2F9aQHKDYZEPwPr02tW8pUuelj9NQNUcZPBdofEnH1/bTo
 t/3DrJ3shlpgHJGaMlcvL9OzVafIt6V5fKWM/ObUzBh08LU/lTr5ciKtaj0wtFx0hyhz
 OvdFweNPtGmC0DTkjjKIXg3EFo4gDiMVrNmpQDThE8CG1+yZBKI7nLU7tAdZVnqhxFED
 FQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zK78FnAOmv3761AstDJXelt5t5xR2XRW77fvH5frBqE=;
 b=DNd+28Awnl/SNMWV2Ty0WaZfDhfItyz8t63KDiXxrc6dQniVRST9sfnSv7u5xOfL31
 gK6ub58MjmS15eQHaLsrFd4Jt4mA1lNNVqbRFVlTdhOqBJBFVjyXeEr8Yl1/sPcG+iYE
 GXTdz+NGkw2dfYdtd9gWglBuYZ1TxYmRogPDFVtzcU3sQkEK8LrYZLsFTERQCG+CKdlO
 9hOJk1/6WUsOx6c6yPWOQup73Yg6JDKJeiwE2OOAuub8qo3b+t59CxELLb76pTPfABJg
 0lw1IbBNRm0mUSaERVW5zTBpSczYtcXbBUO/IE9S9+2zsDtU49NJV+dZwJsuWKMvORZE
 pqag==
X-Gm-Message-State: APjAAAVaFMXBZQKgJWwF62v9CTrtegorWcRaJjxrkU+8HOfMeel32J7Y
 D4/2d/w3Hmc1aBNfXhwCIDxI7Q==
X-Google-Smtp-Source: APXvYqwE4C2wT2seRucgaO6gP6vKq4NKee7ygjFHmTDw+i/soL0w6a48b/EcGkDtS6QcPMZ7gFUutg==
X-Received: by 2002:a63:a05c:: with SMTP id u28mr35047901pgn.333.1573542527714; 
 Mon, 11 Nov 2019 23:08:47 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o1sm15092669pgm.1.2019.11.11.23.08.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 23:08:47 -0800 (PST)
Date: Mon, 11 Nov 2019 23:08:45 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v20 3/4] rpmsg: add rpmsg support for mt8183 SCP.
Message-ID: <20191112070845.GR3108315@builder>
References: <20191014075812.181942-1-pihsun@chromium.org>
 <20191014075812.181942-4-pihsun@chromium.org>
 <20191111231023.GD3108315@builder>
 <CANdKZ0frU9+dRYeMaJjjKm6emxj41c_jBk_RX3G7bXn_oXKp4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANdKZ0frU9+dRYeMaJjjKm6emxj41c_jBk_RX3G7bXn_oXKp4g@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_230848_737303_5C98C2C7 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 11 Nov 22:42 PST 2019, Pi-Hsun Shih wrote:
> On Tue, Nov 12, 2019 at 7:10 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> > On Mon 14 Oct 00:58 PDT 2019, Pi-Hsun Shih wrote:
> > > diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
[..]
> > > +static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
> > > +     .send_ipi = scp_ipi_send,
> > > +     .register_ipi = scp_ipi_register,
> > > +     .unregister_ipi = scp_ipi_unregister,
> >
> > These are exported symbols, so unless you see a need to support
> > alternative implementations in the near future just skip the function
> > pointers and call them directly.
> >
> 
> Yes there is request from MTK that they do want to reuse the mtk_rpmsg
> driver for things other than mtk_scp, so there's a need to support
> alternative implementations for this.
> 

Fair enough, let's leave it like this for now!

Looking forward to the next revision of the patches.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
