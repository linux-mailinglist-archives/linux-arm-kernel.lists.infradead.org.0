Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07BD1FC3A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 03:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EoYPkvD+vICZEkYB7X3Q8fX/tqRyjcHeElo/PUVSkQA=; b=MaYnX33DzY2JLr
	J0ytiMgdk6fhojppIyA11e2KNDw40un78LDbWe6zhkKgiAj95a13jeGIxIxm+7i+y+8I9OyZCHaIr
	1fMuww52TnUW+mYLpMFdNyClIyt4DVQ1rrRj0uPrevGTNimchMF0JM+9SQewnYvKdvg3FUonqFaA7
	Z5RhVZNj9rdoZvohgmVj6K8QnmaSupSsfgUI5elGAiJBbmfK83bwnV7MBPE4WSaxCFxoFQRCgZiLn
	OXVG7/9CCz2MtL7Hvqokm+Z1Wb94vzeUTD9yKlo+iWAeki8y0IEO0QGOgDu/WLEdqp26V91RpcMC9
	Z+dOcgln0tKKZhNvWiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlN4L-0003B4-Tt; Wed, 17 Jun 2020 01:40:49 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlN49-0003A1-Qc
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 01:40:39 +0000
Received: by mail-qk1-x744.google.com with SMTP id w3so606277qkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 18:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SmUuAYdq3VSDmDEV+vJqIoAD1bN1Pfe0CFNGJ2Z92oo=;
 b=HWGSiETopD/8uT/vgDnO1Txg4Pp5nB6BJMg6gAMCIytMHnLMPYx9X5GgorKkY7+EYj
 2eExjiU5LPG11i5hxF+RFhIe6NezkmENcrB/siZPzF9/sCzIK2AyyJu6B/r3hIjFnWDp
 VnFHCuFKpxp4FSeVN0xf6fHSAVcM6L4BrjwlOjwKmErHUjdRYs07Z/VsNt4YSH6kxWB8
 Vjqz+wi7a/O5HgnpSh1MVK21BNNPOJVmK8AnxupiVzcMswsdie96UcBo92hIdVCuFxMJ
 /+s0WcX2ZCIX8htssXw8VFsr7Y+3hr/WYW1GASqZTd4+Rlwr694ua+/yFFVPR1hCKbWw
 /0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SmUuAYdq3VSDmDEV+vJqIoAD1bN1Pfe0CFNGJ2Z92oo=;
 b=iAUXHtHRIv2Cqf5eRAqwzQQZFQjvzAeH+VJ7G4Ub45hbRkdztHWA8Pwo5f/Igx84iW
 gL9S9YWmXUavg7rShPZtlt5Opi9LdX02qsd105r8BkJALh8Pw3q4mnsf35nRwqRF5UfW
 v4RTFGS02PRXYOrji2vufq0kl3RoXnUAL1jGTzNonkd2R+j64m39oabesfhcxmq3F6+L
 2Oudyr/eH6NlOp44gzPIFhfrbY5nEVu9LVoRM0QYFxzAFf5W8u1R9mnqpnYna/84WeiN
 CLViJdeh/Tq0ztzohbfzFSp932P50/pUsimaJ+zgTBnx1xpRlLeMbkQHcWIENgkTVZVc
 Af5Q==
X-Gm-Message-State: AOAM530sBT053faZQlrb1bnf5by7/UwvTSXiv/dRp5pU2yDrdvrWTF7/
 xBw2FQRDhMUoe5261aerNRQ=
X-Google-Smtp-Source: ABdhPJwIasLV+HgrGfsdPlWIktHCipTx9jA7XP9YqH4HFXHuTL2RhhgRP7gpJ2zoSD+VVGUwiYLt1g==
X-Received: by 2002:a37:a292:: with SMTP id
 l140mr23257952qke.171.1592358035895; 
 Tue, 16 Jun 2020 18:40:35 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id a14sm1917014qkn.16.2020.06.16.18.40.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 18:40:34 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v3 0/4] Introduce the Counter character device interface
Date: Tue, 16 Jun 2020 21:39:58 -0400
Message-Id: <cover.1592341702.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_184037_882363_FE086FF8 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, William Breathitt Gray <vilhelm.gray@gmail.com>,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v3:
 - Remove string data type; there is no need to handle strings via the
   chrdev interface
 - Reimplement COUNTER_DATA_TYPE_ENUM using struct counter_available
 - Refactor Count and Signal sysfs number as index offset rather than id
   value; this should make the naming and paths more consistent
 - Implement chrdev_format sysfs attribute; data format of chrdev is
   configured via sysfs in order to keep data and configuration separate

Over the past couple years we have noticed some shortcomings with the
Counter sysfs interface. Although useful in the majority of situations,
there are certain use-cases where interacting through sysfs attributes
can become cumbersome and inefficient. A desire to support more advanced
functionality such as timestamps, multi-axes positioning tables, and
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
                | Type: u64                  |  -------------------
                | Value: 42                  |          |
                +----------------------------+          |
                        |                               |
                 ----------                             |
                / u64     /                             |
                ----------                              |
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
        | Type: const char * |     | Type: u64           |
        | Value: "42"        |     | Value: 42           |
        +--------------------+     +---------------------+
                |                               |
         ---------------                 ----------
        / const char * /                / u64     /
        ---------------                 ----------
                |                               |
                |                               V
                |                       +-----------+
                |                       | read      |
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
interface is solidified. A userspace ABI is effectively immutable so I
want to make sure we get that right before working on an in-kernel API
that is more flexible to change. However, when we do develop an
in-kernel API, it will likely be housed as part of the Counter core
component, through which the userspace interfaces will then communicate.

Interaction with Counter character devices occurs via standard character
device read/write operations. This allows userspace applications to
access and set counter data using native C datatypes rather than working
through string translations.

The following are some questions I have about this patchset:

1. Should the data format of the character device be configured via a
   sysfs attribute, ioctl, or something else?

   I believe it's good to have the configuration of the data format
   separate from the actual data, but I'm not sure if that configuration
   should be exposed via sysfs or some other interface. What interface
   would be most fitting for such configuration?

2. Should the format of the chrdev_format attribute be more friendly for
   a human user?

   I implemented a minimalistic syntax for the sake of simplifying the
   parsing code, but we could increase the verbosity a bit to make it
   easier for humans to understand the format of the chrdev_format
   attribute.

   For example, "C0 C0E3 S1 C1E2" could instead be "Count 0, Count 0
   Ceiling, Signal 1, Count 1 Floor"; because extension names are
   required to be unique, it possible to refer to the extensions
   directly by their names (i.e. "ceiling" and "floor") rather than
   their index offset. The downside to this is of course the need for a
   more complex parser.

3. How should alignment of the character device data be handled?

   We might not need to handle this just yet, but I can envision
   situations where it would be nice for user to specify the alignment
   of the data in order to match the packing of a structure in a
   userspace application. How we specify the alignment will naturally
   depend on the syntax we decide for the chrdev_format attribute. I can
   see a "padding" option as a possible solution, but it'll be nice to
   get some feedback if there are any other ideas.

William Breathitt Gray (4):
  counter: Internalize sysfs interface code
  docs: counter: Update to reflect sysfs internalization
  counter: Add character device interface
  docs: counter: Document character device interface

 Documentation/ABI/testing/sysfs-bus-counter  |   31 +
 Documentation/driver-api/generic-counter.rst |  280 +++-
 MAINTAINERS                                  |    3 +-
 drivers/counter/104-quad-8.c                 |  474 +++---
 drivers/counter/Makefile                     |    1 +
 drivers/counter/counter-chrdev.c             |  612 +++++++
 drivers/counter/counter-chrdev.h             |   23 +
 drivers/counter/counter-common.h             |   15 +
 drivers/counter/counter-core.c               |  187 +++
 drivers/counter/counter-sysfs.c              |  881 +++++++++++
 drivers/counter/counter-sysfs.h              |   14 +
 drivers/counter/counter.c                    | 1496 ------------------
 drivers/counter/ftm-quaddec.c                |   59 +-
 drivers/counter/stm32-lptimer-cnt.c          |  161 +-
 drivers/counter/stm32-timer-cnt.c            |  139 +-
 drivers/counter/ti-eqep.c                    |  211 +--
 include/linux/counter.h                      |  628 ++++----
 include/linux/counter_enum.h                 |   45 -
 include/uapi/linux/counter-types.h           |   34 +
 19 files changed, 2748 insertions(+), 2546 deletions(-)
 create mode 100644 drivers/counter/counter-chrdev.c
 create mode 100644 drivers/counter/counter-chrdev.h
 create mode 100644 drivers/counter/counter-common.h
 create mode 100644 drivers/counter/counter-core.c
 create mode 100644 drivers/counter/counter-sysfs.c
 create mode 100644 drivers/counter/counter-sysfs.h
 delete mode 100644 drivers/counter/counter.c
 delete mode 100644 include/linux/counter_enum.h
 create mode 100644 include/uapi/linux/counter-types.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
