Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B8818F31A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eEqNPrGolpnGnSsKXMDmEbSga1Zjj6JptoTU+qmhyjs=; b=bvt5UYNf8QdZim
	6ddKGeXXDZLOuvtpute4tqqcr21Abhbme7rWlNSukC9xZeR4+2UmcWcO1dyqRcBQhlPbDhS6f3X0/
	nj3Nkm2GfYIdsSlEB97Kjia1AEZlguoZrCAhOi8Ss1Jk2GhhOmNpPOPOrK49/ay+QY1H4OfzzG9+5
	63ZB4aQM63132NE/s21Be99k/kf7m8EZZxbnbtlV59btcihGbv5i8NEdjFQU9SnAP/w4fFaX5hVAW
	TF2esENfEFqfMVUp3k3jr0zK92rOQEfBaoWzk0C7kxsse2VZzZI1K0O0PVc4iJm++M/35JpUQhQTq
	Ti6AW96iinJ6rkrPE3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKcY-0006rD-Sx; Mon, 23 Mar 2020 10:47:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKcQ-0006qa-9q
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:47:43 +0000
Received: by mail-lf1-x144.google.com with SMTP id c5so4349796lfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 03:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=x8g9NcI7xR0HrBsZYLveR9o7NCunM18g76wBVLmnmaQ=;
 b=GrJZytlT/f0w1q5u12Cr7s3ke+MNbxjLKEcVMs+PjSfEoQ93g+0MY4M1IH04M/2+aL
 OBeySUWKEA0iiMhSuNRFpTjcD7EkAV/t/VkiR+Rn/hLfTe7WuxQUCxzNeCZZ0J2h1RBz
 IO3eADoIIDF6Y/FVgblYq45+nVV24s8N2D8re5n23rW6YXc0I7t1YqLtAWcfSlHaqR3A
 fqB1D2GPRSyKw+ouToWNkAXjD0Ba2lZK1LmRv+0cH1fDnmIz1wtZ7wAqe25zF8/WgmHF
 LaQ3ehLhnn209vvG4WzB7fZMVGMwwxppRf33ob71zPK/U796iwb/94RdYDr5uXuLWykp
 D7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=x8g9NcI7xR0HrBsZYLveR9o7NCunM18g76wBVLmnmaQ=;
 b=tvPysthGLuWmFzX9jZcW4PLHJ3dI00NdXpMSH7cvUlK2Dec9cfsGFG7ggTnuivohwQ
 oj1dnCCyx5CdrRLCS78BwqAyA2+1L1RovTH0KT8+0eHuKxiB8FuqDpGklZYHi+hhsXB4
 w++j6pc2Uje7DFBGZ5dfLX0CdgIN64vUBYOTnXJQCARsb+6zr9xI7xvfZD64BMBVJfUq
 MGHl2/uKV2lh1SpVcQlHakVrPrlZQChMRY/8H1ZRuo04NWmoj42yMjx4uSL9U2UDkDjv
 ZgTpRNvsKRF7uskuU7m6pR7uP8ghG2vIVp7LJSxThH+tra60C/0b0706DSFntgJ6Ozij
 essg==
X-Gm-Message-State: ANhLgQ2VAGOb0QjHx3qi/cJx3G5PZ+qsSfvd8G44m5uwLgmWB1IYvOcM
 kz95sTprrOsf0EyZwVT/poE=
X-Google-Smtp-Source: ADFU+vuGwb3VQs5e+PkVltDpAXIs3fxGpY/piv1b7kDK8jnzofa2w9le2gqVOiWYIDiKEzoGyJ4++w==
X-Received: by 2002:a19:ac42:: with SMTP id r2mr12730779lfc.38.1584960458842; 
 Mon, 23 Mar 2020 03:47:38 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id y20sm625998ljy.100.2020.03.23.03.47.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 03:47:38 -0700 (PDT)
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: [RFC PATCH 0/3] Prefer working VT console over SPCR and device-tree
 chosen stdout-path
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
Date: Mon, 23 Mar 2020 13:47:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_034742_369459_A0F84829 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I recently experienced some trouble with setting up an encrypted-root
system, my Chromebook Plus (rk3399-gru-kevin, ARM64) would appear to
hang where it should have asked for an encryption passphrase; and I
eventually figured out that the kernel preferred the serial port
(inaccessible to me) over the built-in working display/keyboard and was
probably asking there.

Running plymouth in the initramfs solves that specific problem, but
both the documentation and tty-related kconfig descriptions imply that
/dev/console should be tty0 if graphics are working, CONFIG_VT_CONSOLE
is enabled and no explicit console argument is given in the kernel
commandline.

This patchset tries to ensure that VT is preferred in those conditions
even in the presence of firmware-mandated serial consoles. These should
be applicable onto next-20200323 without conflicts (also onto v5.6-rc7
with --3way minus the references to a "has_preferred_console" var).

More discussion due to or about the console confusion on ARM64:
- My Debian bug report about the initramfs prompts [0]
- Fedora test issue arising from ARM64 QEMU machines having SPCR [1]
- Debian-installer discussion on what to do with multiple consoles [2]

[0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=952452
[1] https://bugzilla.redhat.com/show_bug.cgi?id=1661288
[2] https://lists.debian.org/debian-boot/2019/01/msg00184.html

Alper Nebi Yasak (3):
  printk: Add function to set console to preferred console's driver
  vt: Set as preferred console when a non-dummy backend is bound
  printk: Preset tty0 as a pseudo-preferred console

 drivers/tty/vt/vt.c     |  7 +++++
 include/linux/console.h |  1 +
 kernel/printk/printk.c  | 68 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 76 insertions(+)

-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
