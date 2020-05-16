Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FCA1D63CA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 21:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+uhMZJeslDR38NUqPD2UQrvAS1n5lzoFqxeeGlrPIU8=; b=Hk6+HCWo5PW7Hi
	gMiNsuVWMwuo8idp7ST8EdA3ulYvK5x6b4qMPVhz5pEZZIvwidMRnmRFKhkNbvJgzS1JGEDJ3LAnM
	ctNYO24i0+XKq7dAtCdkpNAq/az4ZuaxG6PH2UDahwbLlqpZdYOM5di6JGHolHEWWJeV1B8a+XgMp
	GXynV/CTA0WeF3QL0lZ0KuAKYadLAQSrDzM9poTvaEGGeB/A1yfhy4EcUEVFYYZGAk/u1zgdcMxPN
	KWk57HK3IGcTstbkR8yNzSYIbEp3fJiD4fAYMzPZzzxHXqwa/NoZ/klpT7F46JwKqdJ6RSUbzamw9
	M5L5LzVZkgUDiV1iIKfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja2Mc-0007rE-Jq; Sat, 16 May 2020 19:20:50 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja2MS-0007pr-Od
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 19:20:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id i68so4893066qtb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 12:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+aLXLfOYBWa1/HiefX3BKCNHYEqJEEFJy3sI8Yp4bg=;
 b=gtJrwqrkIiMt1lIBICE5TKChEkcoX4uRghpXgVp0gcUVaHoEKEAn5BVmUG5DuqTqDn
 ddTxrD8pHjfRhgvusaEnLvz4PfqkoGJeXQKsQN4oa1nBZr8diMUvrUUeuZcaO5XdcCXu
 voxZV1QlM5dkgMbQJb7xhWVkdo9LOgI+KAYvS6bUmecGHFWSo6rnPj3gIEy+tw0K9yGW
 4xT+NHutuiFVbv+iQ4KQWwI7I4+vazq/8zc0JSztir5P6QAAeXhJ6VrB2Ryq2fmVlCxt
 OVJjUMeZQ0KzsjcIkjhwcFQcWLQwNAI3AXdKw0CUcVA4ICj8AXjBgpbUp7zObuz3hF+f
 tSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+aLXLfOYBWa1/HiefX3BKCNHYEqJEEFJy3sI8Yp4bg=;
 b=SY5PUjMYCCxCKclFXj8Qhx7AutL3OIdL36mNG9x8kWsWsxIIf3IyIDgUYW/2EXA1Ti
 EJyvqhu7jFmr6OO24Sj01nXRrovW9cCnA2bA0wJ6S5zhhVl42cwCc/ZkRzZQHCyZIe/M
 ZVhpaNY7q5tG7n34/MgF+qEyvG4xDHJSj3fUpD0JcI3xuDXooDsyo4VLAtpkS6YWVMAO
 KRmbkv6v94BHls9InbK5b/I0nbwHzHivGH1x8VfqvRsfvyQGBYUWuPkwrAJuRvWzLZ8g
 13FMhJfnJ+wlr2PjQgNe41I6tlyXeg324vtoHnCZQfnlKtCKtuyGCzGVCMXtABID0pxB
 tO9Q==
X-Gm-Message-State: AOAM531KJTEa22+CIrEjKLBrAlaANTz4i5a+vcTgtC3l7ii/gsZYvOf7
 8ov6asqouDlhADW87PIOZKA=
X-Google-Smtp-Source: ABdhPJwy3Hp+RUbGKSSIfrwp9LYEzn56fOCcU0k1xw7kcgwNZKmf9EhmtGs70IUxQsaMI/xLI/AzEQ==
X-Received: by 2002:aed:2496:: with SMTP id t22mr9502815qtc.2.1589656837437;
 Sat, 16 May 2020 12:20:37 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id g19sm3160409qke.32.2020.05.16.12.20.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 12:20:36 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 0/4] Introduce the Counter character device interface
Date: Sat, 16 May 2020 15:19:58 -0400
Message-Id: <cover.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_122040_819638_701F9F85 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changes in v2:
 - Use fixed-width data types to represent Counter data types
 - Use union of function prototypes to store read/write callbacks
 - Eliminate the counter-strings and counter-sysfs-callback files by
   inlining relevant code
 - Reimplement chrdev code to handle read/write calls instead of ioctl
 - Remove struct counter_enum (I'm postponing this development until I
   get the core functionality solid)
 - Remove devm_counter_unregister as unnecessary

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
   sysfs attribute?

   In this patchset, the first 196095 bytes of the character device are
   dedicated as a selection area to choose which Counter components or
   extensions should be exposed; the subsequent bytes are the actual
   data for the Counter components and extensions that were selected.

   Moving this selection to a sysfs attribute and dedicating the
   character device to just data transfer might be a better design. If
   such a design is chosen, should the selection attribute be
   human-readable or binary?

2. How much space should allotted for strings?

   Each Counter component and extension has a respective size allotted
   for its data (u8 data is allotted 1 byte, u64 data is allotted 8
   bytes, etc.); I have arbitrarily chosen to allot 64 bytes for
   strings. Is this an apt size, or should string data be allotted more
   or less space?

3. Should the owning component of an extension be handled by the device
   driver or Counter subsystem?

   The Counter subsystem figures out the owner (enum counter_owner_type)
   for each component/extension in the counter-sysfs and counter-chrdev
   code. When a callback must be executed, there are various switch
   statements throughout the code to check whether the respective
   Device, Signal, or Count version of the callback should be executed;
   similarly, the appropriate owner type must match for the struct
   counter_data macros such as COUNTER_DATA_DEVICE_U64,
   COUNTER_DATA_SIGNAL_U64, COUNTER_DATA_COUNT_U64, etc.

   All this complexity in the Counter subsystem code can be eliminated
   if a single callback type with a `void *owner` parameter is defined
   for use with all three owner types (Device, Signal, and Count). The
   device driver would then be responsible for casting the callback
   argument to the appropriate owner type; but in theory, this should
   not be much of a problem since the device driver is responsible for
   assigning the callbacks to the owning component anyway.

William Breathitt Gray (4):
  counter: Internalize sysfs interface code
  docs: counter: Update to reflect sysfs internalization
  counter: Add character device interface
  docs: counter: Document character device interface

 Documentation/driver-api/generic-counter.rst |  275 +++-
 MAINTAINERS                                  |    3 +-
 drivers/counter/104-quad-8.c                 |  547 +++----
 drivers/counter/Makefile                     |    1 +
 drivers/counter/counter-chrdev.c             |  656 ++++++++
 drivers/counter/counter-chrdev.h             |   16 +
 drivers/counter/counter-core.c               |  187 +++
 drivers/counter/counter-sysfs.c              |  881 +++++++++++
 drivers/counter/counter-sysfs.h              |   14 +
 drivers/counter/counter.c                    | 1496 ------------------
 drivers/counter/ftm-quaddec.c                |   89 +-
 drivers/counter/stm32-lptimer-cnt.c          |  161 +-
 drivers/counter/stm32-timer-cnt.c            |  139 +-
 drivers/counter/ti-eqep.c                    |  211 +--
 include/linux/counter.h                      |  626 ++++----
 include/linux/counter_enum.h                 |   45 -
 include/uapi/linux/counter-types.h           |   45 +
 17 files changed, 2826 insertions(+), 2566 deletions(-)
 create mode 100644 drivers/counter/counter-chrdev.c
 create mode 100644 drivers/counter/counter-chrdev.h
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
