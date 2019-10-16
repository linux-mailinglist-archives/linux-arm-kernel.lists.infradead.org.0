Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C432D88C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 08:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=05/x6nDkt5zoe0KYtGBT7Yo/5BMJDdcKPxylvgN721Y=; b=YO7Dg+UJ85AaLmrSdQNtePzggV
	hG1nhINvdl/GKZ4SMcio/3jMIrdx/dhFr+olMy6UiMTsYKuD8sWQbC4msnUzu6IgX3N7OMeoscg25
	zsUFBlxvAeJEfQ/rzOVd6L1KR8B8ykJydRGUx8U4u/Ytw4mpamE86yjFhQsGI/5eRQOUYOWEovrHH
	L1QY9chvdDfQ+ic0+PV4gXyE2e9XaVljfkYM8v0QbEZbiSyW4xX/oMXywczc/jTvshuQMrfZrS90N
	KEXwy3JgGKur7GXjv99e+I036OMNxeU/Fr4XZXFwTCao62VfJZVMsvmlBOli+QhFj+nkgnhLHEGsH
	G18vz8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdAP-0001ng-Hx; Wed, 16 Oct 2019 06:52:17 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdAH-0001mq-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 06:52:10 +0000
Received: by mail-ua1-x944.google.com with SMTP id q11so6901648uao.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 23:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+yZ4tUEflU1wot9Y3TZUGwsQJDcRC6cRj494J8rN2Ig=;
 b=qKznEtbUYog0qWpVHk5hQ5CTH+HjZ+1M8PCv9jYmJM6e5Ga3cJuHQMHkBxpWibX/y/
 yZYngAzpG7DbJobb3gOI18s84UnRSDk3JhgHlaUpAXge+GXf7lqnSfhT+S9HeryZcUWL
 dnDFQ5Fe42A4M1ra6hX+atjJop1QXwqd8mmVkdWy7TaCSyBuksnALn/pfJJqxs95VrU5
 MmN/8kyKRSy+G2znswjxpNWVQRUTapfSj3LXLEKg2mP6VWXPar0of9rpBSDYv1DIu96z
 1a+lM9D9GdThIthIcztKMefMzT7PgLrYLZpa0z8gpJjU7FPZzBsGiRbJggbpNQQt41qw
 yvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+yZ4tUEflU1wot9Y3TZUGwsQJDcRC6cRj494J8rN2Ig=;
 b=JJIBx1ho4ILL6A3RCpo8tKFEZL/CJL4+igmfDa9nhxO7J2PmubA06CFctzgW3WWU+l
 4XMIFMZoU2Jwbyp53pMNVevq13WRzG7CcQdOlll4acKVD7cCl4Rox7d/JGfUVG3DmOt2
 qE2/sjCit47dPJTBPAhI/E6nU+Gb32gtF8ZUkPXTKJvSikBx+T9Zl6LzLnLND9nhDEYx
 ykN3zt1piRhtbRw2CpV/IaIJn3L2I4/JeiZx1LngXKo67fbYsmXOBxPPHxlN+V+QXbZX
 n3zFPuYxEdHtBU2BKJoUPGttdzENMFj6+ua24UVhyFCP+8G+mg9nJmbwJAc5Y9scPnH3
 Fs6g==
X-Gm-Message-State: APjAAAUwSQQ10fsMgvLn4iG6DxAf1OiZy4eIFKFnth6eR+yTA5JJTqR5
 NRfIz+b21jJQAhuzYWu0FAyTN0H6hZp1JW2EOHs=
X-Google-Smtp-Source: APXvYqwYe2I/kz08nX4fY0/iraBX0nqPJ5J5F4ZWecritIBG2AouvIB4Clj8Mw7kT19YLKlDwJdAsmcM/nGU8rRJXww=
X-Received: by 2002:ab0:7008:: with SMTP id k8mr15269916ual.70.1571208727054; 
 Tue, 15 Oct 2019 23:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLgH=JQeT3=tZ_AdBsV0e-S_JNEe4CtpFW8Wj5NfYW5PsA@mail.gmail.com>
 <CAOuPNLjqm+Dv5RARP6dzZRKSttCvqoLe7MNYOeChAGUWX1krRA@mail.gmail.com>
 <CAOuPNLgZ3kjBaCmXkXHZrncYqUxsNYKiXQqptoDBT_EWfjpNqg@mail.gmail.com>
 <CAOuPNLjMFPn5WLcotG26wy_ROhJZn39iywwOYG0imzjqeQ3jeg@mail.gmail.com>
In-Reply-To: <CAOuPNLjMFPn5WLcotG26wy_ROhJZn39iywwOYG0imzjqeQ3jeg@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 16 Oct 2019 12:21:55 +0530
Message-ID: <CAOuPNLje_kRyEy1JEv1RSSERKGa+WKzmybmR6svqiUcSduNDcg@mail.gmail.com>
Subject: Re: imx6: i2c-transfer timeout issue after resume
To: p.zabel@pengutronix.de, bob.beckett@collabora.com, 
 dri-devel@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_235209_077994_C2BC561A 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 3:47 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi,
>
> On Sun, Sep 29, 2019 at 10:24 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > >
> > > On Mon, Sep 23, 2019 at 1:28 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> > > >
> > > > Dear Philipp,
> > > >
> > > > I have a iMX6dl custom board with custom Linux Kernel 4.8.
> > > > I have both LCD and HDMI connected to the board.
> > > > And we are using weston/wayland as the display interface.
> > > > In normal boot, both LCD and HDMI display is working fine.
> > > >
> > > > But, currently, for one of the requirement, I am trying to explore and
> > > > support hibernation image booting on it.
> > > > Currently, we are able to resume the system without display.
> > > > Also, if we make the entire imx-drm as modules, and then install the
> > > > modules after resume, even LCD is also coming up.
> > > > But HDMI display is black out.
> > > >
>
> I just found the main root cause of the HDMI screen blackout issue
> after system resume.
> * HDMI is trying to get EDID data from the monitor using I2C interface.
> * But its seems i2c_transfer is getting timeout after 5 retries.
> * Thus EDID data is failing, and HDMI could not able to detect the monitor.
>
> This is the logs:
>
> [  441.104989] [drm:drm_helper_probe_single_connector_modes]
> [CONNECTOR:29:HDMI-A-1] status updated from unknown to connected
> [  441.116080]: drm_helper_probe_single_connector_modes - inside -
> else override_edid
> [  441.124416]: drm_helper_probe_single_connector_modes - inside -
> else - drm_load_edid_firmware: count: 0
> [  441.134546]: drm_helper_probe_single_connector_modes - calling - get_modes
> [  441.142157]: dw_hdmi_connector_get_modes : called
> [  441.147652]: dw_hdmi_connector_get_modes : called - calling -> drm_get_edid
> [  441.155346]: drm_do_probe_ddc_edid : called!
> [  441.660759]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 5
> [  442.170758]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 4
> [  442.680755]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 3
> [  443.190755]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 2
> [  443.700754]: drm_do_probe_ddc_edid : i2c_transfer: ret: -110, retry: 1
> [  443.707989]: drm_get_edid : called - drm_probe_ddc - failed
> [  443.714303] dwhdmi-imx 120000.hdmi: failed to get edid
>
> Is there any clue, how to resolve this i2c failure issue, after resume?
> This does not happen in normal booting case.
>
> These are the steps I follow:
> * Boot the system normally (without display) and install all imx-drm as modules.
> * Then uninstall the modules in reverse order.
> * Take the snapshot of the system (suspend to disk).
> * Reboot the system and boot with the image.
> * Install all the modules again.
> * Then launch the Weston.
> * During the weston launch in the beginning we observe this error.
>

* Changing the subject to be more relevant.

I need some pointers in debugging this i2c_transfer timeout issue,
after system resume.
I am not so much familiar with i2c, so I am looking for some clue here.

i2c-experts (or pm experts), please help me to find the root cause and
debug further.

Thanks,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
