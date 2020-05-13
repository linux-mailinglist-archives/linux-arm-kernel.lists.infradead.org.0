Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED571D19ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iz5ZoNpON168eYgRqUAveFF902Dq8fEpkghxhotCU7Y=; b=sZ42V/IjofTA2J
	GqCUYXtBlrvsJ/gUUL0dOrEud/cr8MNH+TpcYIe7Oxweh/x13puUYHhzHcU/c89vMWxhE5KKuopG1
	wWmBF2PRF0pZpWu2djhZ4LtP5c4yrWqmSv1SZ3gZRNIEgk3OvkkwW/SYRWTci49pblY0LOI0YYyB1
	B7SiEJfdNkxdZqiy2CbblC2bO0ObEiB3eKDJl/lno53gPtIsdAiLiObu0ohZ+jkMfyH7n9Rp+h0r5
	uEea922qGQBNJYrvghBtVMzlBeMuLt8E+H9/sq9lL5403ZEjyNb/YwnTPAatRo5OY/Bciqyho3Drm
	2xnSWviDRgs7PRvQcfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtfL-00066Y-Mr; Wed, 13 May 2020 15:51:27 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtfC-00065u-Ca
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:51:19 +0000
Received: by mail-qt1-x832.google.com with SMTP id o19so170279qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 08:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rLEeAmSBwjT3ETZ4wrXG/Y/gbcP+c03guOC0q4Y8fXA=;
 b=CxGZlnCeO8Z+6gWlkyNbL90JiSBlEzm6ThptrdmeTLYbrTmiUMlAF6eHDx9NV4zeGb
 6Rz3PQV5R2XN9pUf4xmN1IKVyaF3WVMHV2UboX5qGevLW946cEuuraERFw9eQEGrXbKC
 ZEtxxPGYbrPUoeWB24ML8Lrx5iuNxW9EkzdqgnkAEasHh2uQH+0JMGCCrdUhLWCvQxBk
 JnuFgJC9Q7HhNbdxW6kBxmZQg/NA4JNrsvfHwgltLePF6FTwiQ/6ToQYL4IHmpzv3H5S
 y/cem8PayEiSqD2aA8SYbHiKZP+VpyM2Tnbb7hjAsHqXaRo4rS7TuE99ktMAowj5sh3E
 V6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=rLEeAmSBwjT3ETZ4wrXG/Y/gbcP+c03guOC0q4Y8fXA=;
 b=d+REXFsjaySnIW/9R5T00khLUn1xW+wSz8nSG039J9LwSWukbnnqoCsjc12G6712ki
 Ggvs3bnsuXrXY6WBLHZ1mKuF6aXTeU5QkaXTcJL69mWzhYI5AHWhNrr8P7kf52UJP7p9
 UL9Xiez5YXZ9ZqnXlqifcBzIwvR62Ydj68pPv+fqbQUq8MD+ugj8tglv+j2LS5QXZUwa
 DsNMgZ7wVPnWmyjGsDppH1V7RcpwxbF2oxxWwRYOgsQPowvag8vB4k/5pA1+3M0StciG
 95DVeKUz8tN+iedgwAYBfiqtTtRC4LMS6502Xng/00fahM2THhRzyPWfs415nbv2pxqq
 jEbQ==
X-Gm-Message-State: AGi0PuYOs65JArhTfL2hNuGIij6HfqqXYl0k8O95hXMJvAEBG9ESamNE
 3pKv+J9iGkTxKRUQbDSA9+g=
X-Google-Smtp-Source: APiQypJBGgkxSgwM/jON7e/l0PAa64vx+SeoV9cMd7E3z4I3RW/6nSCOjOHbnOoiFOC7cea+rfzl7g==
X-Received: by 2002:ac8:3664:: with SMTP id n33mr29399453qtb.363.1589385076554; 
 Wed, 13 May 2020 08:51:16 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:beb1])
 by smtp.gmail.com with ESMTPSA id t88sm7645qtd.5.2020.05.13.08.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 08:51:15 -0700 (PDT)
Date: Wed, 13 May 2020 11:51:14 -0400
From: Tejun Heo <tj@kernel.org>
To: Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for
 kernel?5.7.0-rc5-51f14e2.cki (arm-next)
Message-ID: <20200513155114.GF16815@mtj.duckdns.org>
References: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
 <20200513060321.GA17433@willie-the-truck>
 <1322199095.22739428.1589365183678.JavaMail.zimbra@redhat.com>
 <1039472143.12305448.1589384415559.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1039472143.12305448.1589384415559.JavaMail.zimbra@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_085118_423669_43F12A5C 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [htejun[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Veronika Kabatova <vkabatov@redhat.com>,
 catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, LTP List <ltp@lists.linux.it>,
 CKI Project <cki-project@redhat.com>, cgroups@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:40:15AM -0400, Jan Stancek wrote:
> In LTP issue above it was clear that memory controller is in use.
> Here it looks like some lingering reference to cpuset controller
> that can't be seen in sysfs.
> 
> It's triggered by podman tests actually:
> 1. run podman tests
> 2. mount -t cgroup -ocpuset cpuset /mnt/cpuset/ -> EBUSY
> 
> # mount | grep cgroup
> cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,seclabel)
> 
> # grep cpuset -r /sys/fs/cgroup/
> /sys/fs/cgroup/cgroup.controllers:cpuset cpu io memory pids
> 
> And yet, v1 cgroup fails to mount:
> 
> # mount -t cgroup -ocpuset cpuset /mnt/cpuset/
> mount: /mnt/cpuset: cpuset already mounted or mount point busy.

While if a regression it may point to a newly introduced behavior, in
general, dynamically reassigning cgroup controllers to a different version
hierarchy after active use is not something fully supported. From cgroup2
documentation:

  A controller can be moved across hierarchies only after the controller is
  no longer referenced in its current hierarchy. Because per-cgroup
  controller states are destroyed asynchronously and controllers may have
  lingering references, a controller may not show up immediately on the v2
  hierarchy after the final umount of the previous hierarchy. Similarly, a
  controller should be fully disabled to be moved out of the unified
  hierarchy and it may take some time for the disabled controller to become
  available for other hierarchies; furthermore, due to inter-controller
  dependencies, other controllers may need to be disabled too.

  While useful for development and manual configurations, moving controllers
  dynamically between the v2 and other hierarchies is strongly discouraged
  for production use. It is recommended to decide the hierarchies and
  controller associations before starting using the controllers after system
  boot.

Thanks.

-- 
tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
