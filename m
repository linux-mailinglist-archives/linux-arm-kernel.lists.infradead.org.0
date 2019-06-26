Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BD356CD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YniHQpXBCSg+r8TfqfWRWALynsUweBXZ3owVQQg2ujM=; b=Qod5AzbjAUjkhd
	wkAdYy8JF1kEMcQ3Uo5FgIvDqCcbnIClzaGPeRaQqVoh47Nidzb+l8qD9q9vWMeNCvsVxvDA05Dnx
	XJVaQTQSAc3EQ4MmDihNWbjGJlz5o7id/zUM1UjpngE8/1CIlqo7T2gzNC0zC09f1GM5aoR2pgD0v
	1vRhO1J4/SBGZhaU+cxtVBXAqZIYS+LqvdBfH7G1pQD1MBJDW4z4B3UzN/lmt30fOXgGi+Qccm/hY
	ky8LjP4QtwJ99mdh/q8ssHbuiAM7ogtAJBqqQUoNNhio9nOGVKUuwnbRLsJBBfHEXbVUQGQth54v5
	ANxHOfqGjIsTPa4Lygyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9FI-0003tW-M4; Wed, 26 Jun 2019 14:50:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Es-0003pA-De
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:49:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so2409726wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ECyt5vpAqWKFoSesBXtQvTFCZ7b8NPpG6514f3+peBM=;
 b=bvLQhbNxtQl2dD5Zacz1NqKOVgyIMvJxzsmO+2Riu4LERygWj6oSSB8dCTnlQRzHBJ
 WBcMIUnVXHzRJq2PnULFDQEFau/8R+M6cBXdjbooJor1DbcFp1O8fWIkcZ1i53zf0IA5
 5oz8pE70hgB30UagR+kfeZ38bPeUYsebU5aRY0ZeeiThmo068Pemx1OgojGZ1CiE+1js
 55uJGDTtgOnsyOiEV5lcLBQOwVxfxVzaPBYRHGynEOdSWJCBC4rnsxa7VlSbB2g0sed8
 tXxh29kQ2ud6ODQQqHFPs8Mko1IwBjKs4tAlDVR64YxnpV4eEubO4KnwE4xqOZYGSPQe
 fzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ECyt5vpAqWKFoSesBXtQvTFCZ7b8NPpG6514f3+peBM=;
 b=rDpVI2nA3yQ3egdykrCuj323Z6peflalTnxDggk6Lg/afLF50ivx9VXar1SZZNqQd7
 P69S9YMhKR0+S7MF9cOfuDNVvRF5jJGw5Yr+ti/a3Tj8qzAk8zoQVgCMWmJgXZYbNheB
 7Gov1AVoixjWV8KwFZxAcDIz/22l0URyFt+QVJnfn1K7OwI+cqJclwirZMXzMIKr5rqI
 ZOi1QgOmklz/c67BQJ80Jlh/5pMWGvo3vBwKI6MgVuP1uwH/0yTBXjp2biAxsV3iGL9n
 bWObRiRKzR3YdIdGc/NeWQswk63IzfsFx4UyPiO8xoVj1qA23k/wMk0W5YDmSGGsrK0W
 WnyA==
X-Gm-Message-State: APjAAAWWcYlm7/hD8Wae3K0o2UjJd0Nce5deLI5PF4iafMJWrDmSGqmB
 QwuqGE86gCCVJrVhL+2wmnn4eDD5LhghylwXuGQ=
X-Google-Smtp-Source: APXvYqyCRXdn4IYc4ZYT5kM3lXrCHCJZRWeMSW9Bhp2BTjll4zCHUsAMqPLDD0OJHXb4eGcs5CaX9g+D0C41Y3+WNjg=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr2957974wmc.25.1561560572892; 
 Wed, 26 Jun 2019 07:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
 <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
In-Reply-To: <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 26 Jun 2019 17:49:21 +0300
Message-ID: <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074934_659822_36118766 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

This is my first time documenting the bindings using the
new yaml format so thanks for your patience and explanations!

On Fri, Jun 14, 2019 at 5:53 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Jun 14, 2019 at 2:15 AM <daniel.baluta@nxp.com> wrote:
> >
> > From: Daniel Baluta <daniel.baluta@nxp.com>
> >
> > DSP IPC is the layer that allows the Host CPU to communicate
> > with DSP firmware.
> > DSP is part of some i.MX8 boards (e.g i.MX8QM, i.MX8QXP)
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >  .../bindings/arm/freescale/fsl,dsp.yaml       | 43 +++++++++++++++++++
>
> bindings/dsp/...

Fair enough. Will fix in v2.

>
> >  1 file changed, 43 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> > new file mode 100644
> > index 000000000000..16d9df1d397b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
> > @@ -0,0 +1,43 @@
> > +# SPDX-License-Identifier: GPL-2.0
>
> The preference is to dual license new bindings: GPL-2.0 OR BSD-2-Clause
>
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP i.MX IPC DSP driver
>
> This isn't a driver.

I see. This node is actually the representation of DSP IPC so not a driver.
>
> > +
> > +maintainers:
> > +  - Daniel Baluta <daniel.baluta@nxp.com>
> > +
> > +description: |
> > +  IPC communication layer between Host CPU and DSP on NXP i.MX8 platforms
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx-dsp
>
> You can have a fallback, but it needs SoC specific compatible(s).
Agree. Will fix in v2.

>
> > +
> > +  mboxes:
> > +    description:
> > +      List of phandle of 2 MU channels for TXDB, 2 MU channels for RXDB
> > +      (see mailbox/fsl,mu.txt)
> > +    maxItems: 1
>
> Should be 4?

Actually is just a list with 1 item. I think is the terminology:

You can have an example here of the mboxes defined for SCU.
https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/freescale/imx8qxp.dtsi#L123


>
> > +
> > +  mbox-names
> > +    description:
> > +      Mailboxes names
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/string"
>
> No need for this, '*-names' already has a defined type.
So, should I remove the above two lines ?
>
> > +      - enum: [ "txdb0", "txdb1", "rxdb0", "rxdb1" ]
>
> Should be an 'items' list with 4 entries?

Let me better read the yaml spec. But "items" list indeed sounds better.

>
> > +required:
> > +  - compatible
> > +  - mboxes
> > +  - mbox-names
>
> This seems incomplete. How does one boot the DSP? Load firmware? No
> resources that Linux has to manage. Shared memory?

This is only the IPC mailboxes used by DSP to communicate with Linux. The
loading of the firmware, the resources needed to be managed by Linux, etc
are part of the DSP node.

To avoid confusion I have renamed this node from dsp to dsp_ipc.

>
> > +
> > +examples:
> > +  - |
> > +    dsp {
> > +      compatbile = "fsl,imx-dsp";
> > +      mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
> > +      mboxes = <&lsio_mu13 2 0 &lsio_mu13 2 1 &lsio_mu13 3 0 &lsio_mu13 3 1>;
>
> mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;

Actually no! It looks like the imx mailbox expects one element with a
list of phandles directions and index.

See again, how SCU uses the mailbox node.

https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/freescale/imx8qxp.dtsi#L123

>
> > +    };
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
