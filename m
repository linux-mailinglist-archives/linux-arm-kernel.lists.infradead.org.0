Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381F610DACE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwgTH29aEpHwzrTVzBqIjxLe9PjyJEE/uVfnOywQdiw=; b=X4zwdUJBOYtfMG
	QdoSr4dju1jDSF5ctNkQio7MULOT0UvwpmSQI3Bci5ZVPAchpVjWUtdCdEjRiQCYUt7lUVyt75RM/
	JF3fwzGD0qrqcdivsQ4tWpF9kyPlZ1eJE74ZyUgU4RCWZE/T/KzLewQg5LbD+/O7nFYAKsI5C9VL0
	iC4k0bFgx1je0A38YbEA2sfpBhdaJA7uzOO/22AsQ/77/9LgwAm1WcH7HxbOUGN9qjU9oX1Fwh6D3
	q4oPMVVsfHxIYVnPQh4TrNcig48eZeqqJkTTsZhHd+S0ZnsPaHkcrhup10wmXaR4H/52Iqg2nEAGK
	8jAfrnhlwyhqs131rNHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianY8-0008DW-Mc; Fri, 29 Nov 2019 21:11:36 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianXy-00085c-5P
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:11:27 +0000
Received: by mail-il1-x142.google.com with SMTP id t9so8340393iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 13:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J737RfycvasrkDMuXXVhGv8GjJozMIk9WjH6tUo8YNU=;
 b=lB9otGP+R7D5FDCg+yCl5lzrEbHVc6Uxs0+r8izKBMVVOofA3vofUwCrTGfrnh/HzZ
 nQhDEkKv9iFoZWHxi6Lm1vM755MYXzxCy5RZp4jPRE/gJ2i9XvIJGWnd9ekCs/i9szP+
 517eLdsZZuxFUU4mWYjZgOVY1hD6uyvbW1lnCzq/wktHxgnQA6T1f0c9qQjJHQmI0zbI
 8V+2XFBdclfe41bWEdDMCU2YuW4KMdfuROPYnbBrNDN52yqzzuCMy8RtBtAnZxGVEyDm
 ntE4PwYVP+sP+TljhMeQQ5sxV0Ry0ylzC2Nuyf3oC2BT/Tqn/gwKUaSZXUT6AHKd8tDK
 rpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J737RfycvasrkDMuXXVhGv8GjJozMIk9WjH6tUo8YNU=;
 b=oO+h2qY5jpwh87xZKL5RF6LmmFlld7MZADTUeNrwp+x+0M1n0SI0ArgQ6NL4teb9uZ
 +DggLPzZHXFRbxIjlXlO8sdZFzUNnrfok2F2IHl3CGR1iEXSDtNYz0zNsVZKyrdWvWKN
 ijaQbFHI478b+NIlDYFNq+nlp4Plm+zYRG2iDcbyvO008+fMTCzPcKVxjY11JD4O3hk5
 eLCngigMb9dsE+z56rjOWefN8rF5icrqClytAt5jTSiptToTgj4PrbLtDG6WUn+HUizd
 HdTAiA90VPyGfcK/URwvduK7CjiU4FjYVCDHMY/MAvlZ09t4ij1z/VE3gBKEajU7rQPv
 goyA==
X-Gm-Message-State: APjAAAVwBadNqN8iPFOe1+w/N64UDblG200ztGlfeavdQ9VUV5zLnXGW
 mRbzelh53Dh+dEDqer/5wjx9iJCflcP6smdk1TGgLA==
X-Google-Smtp-Source: APXvYqyOXHCVc3ozOJPEmGcC3VwB8m0Qnuuz5GE4mQlGcSQvgINwg2paqQAOa7PK0kmgMZbGH4Jw33/Thcthow443Ck=
X-Received: by 2002:a92:1547:: with SMTP id v68mr13668342ilk.58.1575061884570; 
 Fri, 29 Nov 2019 13:11:24 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-8-mike.leach@linaro.org>
 <20191125212258.GB18542@xps15> <35357ff3-2b1e-764e-cfbd-65bcc7a4faa6@arm.com>
In-Reply-To: <35357ff3-2b1e-764e-cfbd-65bcc7a4faa6@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 29 Nov 2019 14:11:13 -0700
Message-ID: <CANLsYkxqO71aBzf=BqcFDWccp3XH3gXc4OESgRy0-rTEe27fJA@mail.gmail.com>
Subject: Re: [PATCH v5 07/14] coresight: cti: Add device tree support for
 custom CTI.
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_131126_234353_241A1D6D 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 Nov 2019 at 07:16, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 25/11/2019 21:22, Mathieu Poirier wrote:
> > On Tue, Nov 19, 2019 at 11:19:05PM +0000, Mike Leach wrote:
> >> Adds support for CTIs whose connections are implementation defined at
> >> hardware design time, and not constrained by v8 architecture.
> >>
> >> These CTIs have no standard connection setup, all the settings have to
> >> be defined in the device tree files. The patch creates a set of connections
> >> and trigger signals based on the information provided.
> >>
> >> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> >> ---
> >>   .../coresight/coresight-cti-platform.c        | 250 +++++++++++++++++-
> >>   .../hwtracing/coresight/coresight-cti-sysfs.c |  11 +
> >>   2 files changed, 257 insertions(+), 4 deletions(-)
>
> >> +static int cti_plat_create_impdef_connections(struct device *dev,
> >> +                                          struct cti_drvdata *drvdata)
> >> +{
> >> +    int rc = 0;
> >> +    struct fwnode_handle *fwnode = dev_fwnode(dev);
> >> +    struct fwnode_handle *child = NULL;
> >> +
> >> +    if (IS_ERR_OR_NULL(fwnode))
> >> +            return -EINVAL;
> >> +
> >> +    fwnode_for_each_child_node(fwnode, child) {
> >> +            if (cti_plat_node_name_eq(child, CTI_DT_CONNS))
> >> +                    rc = cti_plat_create_connection(dev, drvdata, child);
> >> +            if (rc != 0)
> >> +                    break;
> >> +    }
> >> +    fwnode_handle_put(child);
> >
> > As far as I can tell we don't need to call fwnode_handle_put()?
>
> Actually we do, if we break the scan in between, at least for of_nodes.
> I had to literally look it down all the way down to confirm this.
>
> So for CONFIG_OF it ends up in of_get_next_available_child(), which
> drops the ref on "prev" and grabs the "next". So in case we break
> the loop, we must drop the ref on the child.

Well spotted.

> Otherwise, the last
> result would be NULL, which would have dropped the ref on the "last"
> valid entry. And this is harmless with a NULL ptr.
>
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
