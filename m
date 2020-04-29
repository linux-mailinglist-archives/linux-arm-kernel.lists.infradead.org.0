Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5CF1BE5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KkN6xlIlo5ude/mkafXtvtf0ztpD9VTc8Tf/xRdCO+U=; b=ApaE+oeSmjs7Ir
	WquSd/AGjIvB8u5CnBU0SaOVKogRLutfw6+WQLLNQJ5zqZM8CFyGEufsATOooiiCH70v5GXSEAOWF
	rJpte4SWqPgOrGuKcor7xVtiFLl0C59ROFLlFgFL6yo1jqbTyaKivyhWvHuJGTbaD5yyrwGkD64ZV
	Rwr3XKKmLRIeZWAHZkDZmJn6NHsGL5Xnf/lfIR1ZW35CO+JbloFhJQPsglp9hKSZ0AhgQw61v6ys5
	vr+h+rSbGJ2qjOpOQ4smeq3PvsT2/ehhGmSjxamDaPub3+9x1Jxh7M8lsQamKoleNJccuA0ov+Api
	3pgpL+gcVuD4FlByyKVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrBr-0004ER-Ns; Wed, 29 Apr 2020 18:12:11 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrBe-0004Cr-B3
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:12:00 +0000
Received: by mail-qk1-x742.google.com with SMTP id s63so3004945qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6ytqgDFNHsaOJjTUUUjsCdnofrnVPTea34tVhvLGag=;
 b=bUt0zzXrJQLxLVIZKOSGZaDef2zTVtHzKp2OFZL1X/gYdKIm90Aci8JdCzU+HrnhyV
 Vu9hRMumm5D4AnMwumFwuQlVhj5yiboiM1cc9eeBrHKQFCM2zFpss+E8s4iYLzjLPBB0
 2SwjgpMwPX7VG2WaJGzHUUDu7bplqk4VzO4GChrHIkL12/2IoUQQmSlaklBzRXIOT4es
 K3yC1ufxKbErto9d6S8XNfgHcZeD6CgJUzWDLwVPoENy0MlIGzAOuPlu4zzdHw9nZFRR
 h/fm0R3Ajic+K8g7D+JNxg98G5zysinkwWtVFhEHKjuoQGQ8jYQEKg2wvu+FqNgPRMFt
 aWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6ytqgDFNHsaOJjTUUUjsCdnofrnVPTea34tVhvLGag=;
 b=snYwhIbJzzKnNqYLAwymy8qJSLJmGsGlMCI7OTCpVOGpmvErB/jhu63rJK4Jg3wTok
 wf0LQVo53LLKcgLM7othwFi4tEBMayeHmw99eZgImwUcZu7ggWAzyfIKzlpjI/A26l0r
 Quek7qNgGKMeYXfkd2WXT9uW+U3qGcLCiaEcpyawHMPnyn5cnB1GWwQhtYLAMnOW+m5k
 4j5ML/XwH0zYYHu8/bsWQwJpPPvNGOTrejLGVjD3cGT1hUHJP+1qjC2zkCtw+XCvrlLy
 BD40PuEzzHPOtIXfHeCwmcAEnpXG0h+bn0vFH/2NNZOAEmscP2EmNQwaWbeGwVFONC1K
 sSHw==
X-Gm-Message-State: AGi0PualpUWDYgdojtPAvvtvOeq/lAyfMXjn7dSKfhafeJ+PoUaM/mv4
 AXBwzse1/vRKSqNywdnpTP8=
X-Google-Smtp-Source: APiQypLffH5aM3hScXzjOmVleEGq/GKFIsQVNidjLjtLe6HlCO9EYM6OMrwbw2vdYhGIPLCAhnhKzQ==
X-Received: by 2002:a37:886:: with SMTP id 128mr32049757qki.325.1588183915008; 
 Wed, 29 Apr 2020 11:11:55 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id o43sm16315082qtf.46.2020.04.29.11.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 11:11:54 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH 0/4] Introduce the Counter character device interface
Date: Wed, 29 Apr 2020 14:11:34 -0400
Message-Id: <cover.1588176662.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_111158_384143_73BDC051 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 William Breathitt Gray <vilhelm.gray@gmail.com>, fabrice.gasnier@st.com,
 fabien.lahoudere@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Over the past couple years we have noticed some shortcomings with the
Counter sysfs interface. Although useful in the majority of situations,
there are certain use-cases where interacting through sysfs attributes
can become cumbersome and inefficient. A desire to support more advanced
functionality such as timestamps, multi-axis positioning tables, and
other such latency-sensitive applications, has motivated a reevaluation
of the Counter subsystem. I believe a character device interface will be
helpful for this more niche area of counter device use.

To quell any concerns from the offset: this patchset makes no changes to
the existing Counter sysfs userspace interface -- existing userspace
applications will continue to work with no modifications necessary. I
request that driver maintainers please test their applications to verify
that this is true, and report any discrepancies if they arise.

However, this patchset does contain a major reimplementation of the
Counter subsystem core and driver API. A reimplementation was necessary
in order to separate the sysfs code from the counter device drivers and
internalize it as a dedicated component of the core Counter subsystem
module. A minor benefit from all of this is that the sysfs interface is
now ensured a certain amount of consistency because the translation is
performed outside of individual counter device drivers.

Essentially, the reimplementation has enabled counter device drivers to
pass and handle data as native C datatypes now rather than the sysfs
strings from before. A high-level view of how a count value is passed
down from a counter device driver can be exemplified by the following:

                 ----------------------
                / Counter device       \
                +----------------------+
                | Count register: 0x28 |
                +----------------------+
                        |
                 -----------------
                / raw count data /
                -----------------
                        |
                        V
                +----------------------------+
                | Counter device driver      |----------+
                +----------------------------+          |
                | Processes data from device |   -------------------
                |----------------------------|  / driver callbacks /
                | Type: unsigned long        |  -------------------
                | Value: 42                  |          |
                +----------------------------+          |
                        |                               |
                 ----------------                       |
                / unsigned long /                       |
                ----------------                        |
                        |                               |
                        |                               V
                        |               +----------------------+
                        |               | Counter core         |
                        |               +----------------------+
                        |               | Routes device driver |
                        |               | callbacks to the     |
                        |               | userspace interfaces |
                        |               +----------------------+
                        |                       |
                        |                -------------------
                        |               / driver callbacks /
                        |               -------------------
                        |                       |
                +-------+---------------+       |
                |                       |       |
                |               +-------|-------+
                |               |       |
                V               |       V
        +--------------------+  |  +---------------------+
        | Counter sysfs      |<-+->| Counter chrdev      |
        +--------------------+     +---------------------+
        | Translates to the  |     | Translates to the   |
        | standard Counter   |     | standard Counter    |
        | sysfs output       |     | character device    |
        |--------------------|     |---------------------+
        | Type: const char * |     | Type: unsigned long |
        | Value: "42"        |     | Value: 42           |
        +--------------------+     +---------------------+
                |                               |
         ---------------                 ----------------
        / const char * /                / unsigned long /
        ---------------                 ----------------
                |                               |
                |                               V
                |                       +-----------+
                |                       | ioctl     |
                |                       +-----------+
                |                       \ Count: 42 /
                |                        -----------
                |
                V
        +--------------------------------------------------+
        | `/sys/bus/counter/devices/counterX/countY/count` |
        +--------------------------------------------------+
        \ Count: "42"                                      /
         --------------------------------------------------

I am aware that an in-kernel API can simplify the data transfer between
counter device drivers and the userspace interfaces, but I want to
postpone that development until after the new Counter character device
ioctl commands are solidified. A userspace ABI is effectively immutable
so I want to make sure we get that right before working on an in-kernel
API that is more flexible to change. However, when we do develop an
in-kernel API, it will likely be housed as part of the Counter core
component, through which the userspace interfaces will then communicate.

Interaction with Counter character devices occurs via ioctl commands.
This allows userspace applications to access and set counter data using
native C datatypes rather than working through string translations.

Regarding the organization of this patchset, I have combined the counter
device driver changes with the first patch because the changes must all
be taken together in order to avoid compilation errors. I can see how
this can end up making it difficult to review so many changes at once,
so alternatively I can separate out the counter device driver changes
into their own dedicated patches -- with the understanding that the
patches must all be taken together.

In addition, I anticipate the Microchip TCB capture counter driver to
break with this patchset. I'm not sure how that driver will be picked
up yet so I have avoided adding it to this patchset right now. But the
changes to support that driver are simple to make so I can add them in a
later revision of this patchset.

The following are some questions I have about this patchset:

1. Should enums be used to represent standard counter component states
   (e.g. COUNTER_SIGNAL_LOW), or would these be better defined as int?

   These standard counter component states are defined in the
   counter-types.h file and serve as constants used by counter device
   drivers and Counter subsystem components in order to ensure a
   consistent interface.

   My concern is whether enum constants will cause problems when passed
   to userspace via the Counter character device ioctl calls. Along the
   same lines is whether the C bool datatype is safe to pass as well,
   given that it is a more modern C datatype.

2. Should device driver callbacks return int or long? I sometimes see
   error values returned as long (e.g. PTR_ERR(), the file_operations
   structure's ioctl callbacks, etc.); when is it necessary to return
   long as opposed to int?

3. I only implemented the unlocked_ioctl callback. Should I implement a
   compat_ioctl callback as well?

4. How much space should allot for name strings? Name strings hold the
   names of components (ideally as they appear on datasheets), so I've
   arbitrarily chosen a size of 32 for the character device interface.

5. Should the owning component of an extension be determined by the
   device driver or Counter subsystem?

   A lot of the complexity in the counters-function-types.h file and the
   sysfs-callbacks.c file is due to the function pointer casts required
   in order to support three different ownership scenarios: the owning
   component is the device, the owning component is a Count, the owning
   component is a Signal.

   Because the Counter subsystem doesn't not know which scenario is
   valid, it must manually check and provide for all three ownership
   cases. On the other hand, device drivers do know exactly which case
   applies because they are the ones providing the callbacks.

   The complexity in the Counter subsystem code can be eliminated if the
   owning component is simply passed down to the callbacks as a void
   pointer. The device drivers will then be responsible for casting to
   the appropriate component type, but this should in theory not be a
   problem since the device driver assigned the callback to the owning
   component in the first place.

William Breathitt Gray (4):
  counter: Internalize sysfs interface code
  docs: counter: Update to reflect sysfs internalization
  counter: Add character device interface
  docs: counter: Document character device interface

 Documentation/driver-api/generic-counter.rst  |  259 ++-
 .../userspace-api/ioctl/ioctl-number.rst      |    1 +
 MAINTAINERS                                   |    3 +-
 drivers/counter/104-quad-8.c                  |  437 +++--
 drivers/counter/Makefile                      |    2 +
 drivers/counter/counter-chrdev.c              | 1134 +++++++++++++
 drivers/counter/counter-chrdev.h              |   16 +
 drivers/counter/counter-core.c                |  220 +++
 drivers/counter/counter-function-types.h      |   81 +
 drivers/counter/counter-strings.h             |   46 +
 drivers/counter/counter-sysfs-callbacks.c     |  566 +++++++
 drivers/counter/counter-sysfs-callbacks.h     |   28 +
 drivers/counter/counter-sysfs.c               |  524 ++++++
 drivers/counter/counter-sysfs.h               |   14 +
 drivers/counter/counter.c                     | 1496 -----------------
 drivers/counter/ftm-quaddec.c                 |   46 +-
 drivers/counter/stm32-lptimer-cnt.c           |  159 +-
 drivers/counter/stm32-timer-cnt.c             |  132 +-
 drivers/counter/ti-eqep.c                     |  170 +-
 include/linux/counter.h                       |  547 +++---
 include/linux/counter_enum.h                  |   45 -
 include/uapi/linux/counter-types.h            |   67 +
 include/uapi/linux/counter.h                  |  313 ++++
 23 files changed, 3816 insertions(+), 2490 deletions(-)
 create mode 100644 drivers/counter/counter-chrdev.c
 create mode 100644 drivers/counter/counter-chrdev.h
 create mode 100644 drivers/counter/counter-core.c
 create mode 100644 drivers/counter/counter-function-types.h
 create mode 100644 drivers/counter/counter-strings.h
 create mode 100644 drivers/counter/counter-sysfs-callbacks.c
 create mode 100644 drivers/counter/counter-sysfs-callbacks.h
 create mode 100644 drivers/counter/counter-sysfs.c
 create mode 100644 drivers/counter/counter-sysfs.h
 delete mode 100644 drivers/counter/counter.c
 delete mode 100644 include/linux/counter_enum.h
 create mode 100644 include/uapi/linux/counter-types.h
 create mode 100644 include/uapi/linux/counter.h


base-commit: 00edef1ac058b3c754d29bcfd35ea998d9e7a339
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
