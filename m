Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBB6CB810
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iODEItAmkygtc5SoGOD21CiSgS84Whr+PnpGk6IyC0M=; b=lttpCM3pZxon4QelyWQHdAOvIq
	MdxiJFZg2dgyK/o0YuNXxYMLmUZuVRpnMRxrZhKXaLW3zt3xOqj2o4RFfN4rJLKyI2wkJ1Z7QXb/L
	ccuKbxdU8Wkn0S0YblfZ/hIK0vX4ZHtxajSzno7ZDEsfk3OT/PmKHXbGGvULDi72tLTeZ3g5msJWD
	5veFGXXBZbKtZaBkc4imod+gGsO3GUzfwpc7RYjhhqQOcV/OGN+TW1iaCcKBVa0pP0t8HuzateS0J
	5Ubv1nN1t8qVU8P7hLikn9nUmYrviJB1xRA/iWw4Crpgh609B531t9MrwTLErSl4ktwaN5t1lQiRn
	FvJKEj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKfC-0008BV-TP; Fri, 04 Oct 2019 10:18:18 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKf5-0008Aj-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:18:12 +0000
Received: by mail-vs1-xe31.google.com with SMTP id w195so3741666vsw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 03:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=FR8/a0jMod/hGsojz+LGnIr8+PyKD68xBHORYzblMNk=;
 b=RJmgbSUmpYIPMnsXW4fiFNIs/nVsdpLxuh/2Jl/WgsZA02vC1tEOopTRcwbYPHM5L0
 r2vkElO9koITv+QRvcZ7eWPw4X/99IQsFa1qglm8P6X6HCy8xXv5WsVfamS72xN5rYMw
 TzISRhXTwgV1pJXSjocdgc8XLqm8jZ0owy4hJmRMYenI8QXCmerUwPEafvg9lM1tQ8rU
 Qk/XRRYHCoYpI+Ufi5B0LMqpNs4TCnVpdD8rYcqHCS6I24R+H1Y9wCVsoXmceg1+1g3L
 r8ijid7u8AvvOR9BsWsNr/+nlo7QPKNheFq4GAPHjhDsRX06CmrmT9PEi5YQJ+EeCMzQ
 wUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=FR8/a0jMod/hGsojz+LGnIr8+PyKD68xBHORYzblMNk=;
 b=IHemDdEh6MuCCANBLbMx0vKnvFnfHh/+FsLF0LeE+qQsq1ZNJaN9RlihdykZlE14OS
 CVWLTLP3dO1e3Y/WoaVOUqfPw2FNTovXV/BijDd4SHn2iBomgCqjhPk3TAv74VLFeFp2
 WaXzPsxCmpRY+ULY5KBm0R3quPfpG+3qAIpfPLOiItZIPUz7MI25TlYCIOlNe2/yV4AF
 03frZycuscvFM4BprdaZ2V0IGt3+ySR/7wuhmQqwcGPP/FYrOkdaiYmWHCTGwpoYBCgu
 rilSahUhWt+ymGFVa2MJLD/hUrptxRBmTJU7HCjTiafR4CjisDBvawgAkYQjy7xyYr6P
 Tpzg==
X-Gm-Message-State: APjAAAX/Ets10Hs9JuCEwu0pRlTrzczUFEU06H6M677iytRri3huNrKX
 G0L3r6cOp0UZ7/2vBON9Oo6nnhzTxHtQ2EVlMwA=
X-Google-Smtp-Source: APXvYqzoJg533BuJP8X9hanZyDP0L9alk4DwLrlKbxlCtR/Dh3mBh8FRwtP02LUsZBLr2AmV84eZG7uiFXxZAQO1QWo=
X-Received: by 2002:a67:e40a:: with SMTP id d10mr7102858vsf.196.1570184288590; 
 Fri, 04 Oct 2019 03:18:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLgH=JQeT3=tZ_AdBsV0e-S_JNEe4CtpFW8Wj5NfYW5PsA@mail.gmail.com>
 <CAOuPNLjqm+Dv5RARP6dzZRKSttCvqoLe7MNYOeChAGUWX1krRA@mail.gmail.com>
 <CAOuPNLgZ3kjBaCmXkXHZrncYqUxsNYKiXQqptoDBT_EWfjpNqg@mail.gmail.com>
In-Reply-To: <CAOuPNLgZ3kjBaCmXkXHZrncYqUxsNYKiXQqptoDBT_EWfjpNqg@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Fri, 4 Oct 2019 15:47:57 +0530
Message-ID: <CAOuPNLjMFPn5WLcotG26wy_ROhJZn39iywwOYG0imzjqeQ3jeg@mail.gmail.com>
Subject: Re: imx6: hdmi black screen issue after resume
To: p.zabel@pengutronix.de, bob.beckett@collabora.com, 
 dri-devel@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_031811_220287_8FA828BE 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Sep 29, 2019 at 10:24 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> >
> > On Mon, Sep 23, 2019 at 1:28 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> > >
> > > Dear Philipp,
> > >
> > > I have a iMX6dl custom board with custom Linux Kernel 4.8.
> > > I have both LCD and HDMI connected to the board.
> > > And we are using weston/wayland as the display interface.
> > > In normal boot, both LCD and HDMI display is working fine.
> > >
> > > But, currently, for one of the requirement, I am trying to explore and
> > > support hibernation image booting on it.
> > > Currently, we are able to resume the system without display.
> > > Also, if we make the entire imx-drm as modules, and then install the
> > > modules after resume, even LCD is also coming up.
> > > But HDMI display is black out.
> > >

I just found the main root cause of the HDMI screen blackout issue
after system resume.
* HDMI is trying to get EDID data from the monitor using I2C interface.
* But its seems i2c_transfer is getting timeout after 5 retries.
* Thus EDID data is failing, and HDMI could not able to detect the monitor.

This is the logs:

[  441.104989] [drm:drm_helper_probe_single_connector_modes]
[CONNECTOR:29:HDMI-A-1] status updated from unknown to connected
[  441.116080]: drm_helper_probe_single_connector_modes - inside -
else override_edid
[  441.124416]: drm_helper_probe_single_connector_modes - inside -
else - drm_load_edid_firmware: count: 0
[  441.134546]: drm_helper_probe_single_connector_modes - calling - get_modes
[  441.142157]: dw_hdmi_connector_get_modes : called
[  441.147652]: dw_hdmi_connector_get_modes : called - calling -> drm_get_edid
[  441.155346]: drm_do_probe_ddc_edid : called!
[  441.660759]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 5
[  442.170758]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 4
[  442.680755]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 3
[  443.190755]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 2
[  443.700754]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 1
[  443.707989]: drm_get_edid : called - drm_probe_ddc - failed
[  443.714303] dwhdmi-imx 120000.hdmi: failed to get edid

Is there any clue, how to resolve this i2c failure issue, after resume?
This does not happen in normal booting case.

These are the steps I follow:
* Boot the system normally (without display) and install all imx-drm as modules.
* Then uninstall the modules in reverse order.
* Take the snapshot of the system (suspend to disk).
* Reboot the system and boot with the image.
* Install all the modules again.
* Then launch the Weston.
* During the weston launch in the beginning we observe this error.


Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
