Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4BF12E928
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CohWX6idINWEI+COpxMHmcGEXdjQGQ72yP49CppuRw=; b=Jw0l1+XnkmTb+B
	+3xcvUfZ2PIFJCeFHniOEu3PI8bTSIe/VmDSxPV3MdIdzriqg4rtL9eRfORInggzlolj1mq1LsJKu
	74AfUX0RAq1QR5nk/j4DCyvRELsyg3m9YpKGij+o42ezDPpf3R3QpbTin3lhFdQ15D2qGEpayIr0N
	OReqir30vYCUD67Zo4kwzhQ8VCL6z0djTVydHprlvcNgUXh5Omm/4Vw4UXAQuqvADIl1PBTxX6tWr
	DbId4grczws1dvlvM1b4n++qYQvRvkK+HjldD1KGTX2C0Y0Pk+sC/4/eC5AxlDeZFhxK9yNZcCPcI
	xyCSleuND3+p0orwvo/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in41Q-00031u-Nq; Thu, 02 Jan 2020 17:12:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in41I-00031Z-S8
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:12:26 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 273AA222C3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Jan 2020 17:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577985144;
 bh=dIq2enHfn035JWxqGNTizyqe3d+P+AAp9zDOlaNOECA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W4YT7s4ksMhxhllREBYlfWo+SkISlyHy0/s1uYsWPmXzlaDLUG/JFSr5UnsYHuBX+
 xwE8nCkEtYIHbW8DJygccsDR6X806VmficxaMLdlntXC+Zflrgxj7S1i/MlbcJLJZ1
 2HtNwBJMWMZ6+UZjJCpXRP7dFrqljmgxCcJVz8AI=
Received: by mail-qk1-f179.google.com with SMTP id x1so31806302qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:12:24 -0800 (PST)
X-Gm-Message-State: APjAAAWMihE6cGMcerFZj8qWxEGVmaI01xGmIxN7ovtkdPWbAmMu+08Z
 FdSq0KI3J8fUmW11DtBW9VFvML01a0+i0SEj4g==
X-Google-Smtp-Source: APXvYqyRh/kYGJmLrw4lgU0NGysmlV0J1/XKZ+mTTMzGUruPxDHGf3p4UBRuvBbrQrjV4ZFFJspxo9Z9x/MVtuRHxpA=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr66939358qke.393.1577985143243; 
 Thu, 02 Jan 2020 09:12:23 -0800 (PST)
MIME-Version: 1.0
References: <20200102152605.71117-1-maxime@cerno.tech>
In-Reply-To: <20200102152605.71117-1-maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 2 Jan 2020 10:12:10 -0700
X-Gmail-Original-Message-ID: <CAL_JsqKh1YKmj8T6x80fhn8YmnDC+qBdvSrNHwXte2CPPncqNA@mail.gmail.com>
Message-ID: <CAL_JsqKh1YKmj8T6x80fhn8YmnDC+qBdvSrNHwXte2CPPncqNA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: Convert Allwinner display
 pipeline to schemas
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_091224_934466_FB80DC96 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 8:26 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The Allwinner SoCs have a display engine composed of several controllers
> assembled differently depending on the SoC, the number and type of output
> they have, and the additional features they provide. A number of those are
> supported in Linux, with the matching bindings.
>
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those controllers to schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> ---
>
> Changes from v1:
>   - Declare the ports in the bindings

What about my comment on using minItems rather than maxItems?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
