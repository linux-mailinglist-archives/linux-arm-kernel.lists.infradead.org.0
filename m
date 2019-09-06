Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DAFABAFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gI5FbX3GBvd4EOA+FczY13DTxdzNQYdBFbOg9MAKcd4=; b=A1F
	fpa2uBHIRT/z6++PHvzoP8pzLIuDu7G33O6OsqDHUMzm57e4s5xUEx4hjXkSpt6pmXOEnwxDjA+ox
	6FPLHscK78RiQpkTlNtg75ik4dpJHx+fTh8l4wxyDNAhHX3wvGxXlMLX7QJ08IAax+1BWOcDJAXrt
	cStwhtdMGYhOWRT56FxbuHhMwhUFAqJDG0nXwzS8MV06M9NWHXxFv264x8d5AQ0HwFw/EfSjpHdZD
	AepDpSGLFbQmWqfnU00inJLfZtX1uREOcp7dtWGXxHaBGWwxJkx/OVpVR2z8UWS4yUCSquGqtYZAf
	PK6O1mDrUKbQYJaURm8i5UcfsTkkJhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FIx-0006C5-Pf; Fri, 06 Sep 2019 14:33:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FIj-0006BM-N3; Fri, 06 Sep 2019 14:33:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id 30so6801296wrk.11;
 Fri, 06 Sep 2019 07:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YhOPiGQ/jKMfAKNMmBIBmilg3dwIp+IShaOpXqxWprg=;
 b=Dwm8lWGdUfC0GE7Rtw818ox0Io/TAtpAZBPZwpQUuPsDnSRSlrYN+jCD9mNWWFgdK4
 j4a0eB5omczZilSZ7ulLqflJcjHmKtm3/5FwVDYfDWUd2NWx+8VgQvQ+VvXgkQLc/w3Q
 TCO8DOlc9P3rYEoO+da2Fy6JtnNOP/DK8O+ny8ekeDW6ksFcpwWBOlzcWISQm0z/0kGi
 OmIBA8Ebfswojg9WcOK8TXLX2mqd0DknsH7t/Rw63q9erBbkT7BAs46SvDpBskdxrlCm
 SPeQPK1kDW8kCxfMZWH+k0/Iju1spAq8DuZm7ePQ34F4UdBA4gi+IL2hVZ44vpKM6BIw
 byBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YhOPiGQ/jKMfAKNMmBIBmilg3dwIp+IShaOpXqxWprg=;
 b=SxSs1g6eMl2H4QrR5NAv8kxvXiyWKp7oLCrEFxA5a6v2+Lg8J4L30DtVRXCoEM6dzS
 qM7/jSSffZtFxdz15aBfYDgshRnHk1okfwjnQTDUMpWxbHEMeN9cJos1vihIv1qPtIVg
 M9Ap9PpCVzotqiagavaGFquImeRo24dwNyp+qIwnVZlu2vRC1pB52XW4fCmunBw6jcBW
 1/Au+tsMaj3yeY7+fxQ3F4PV+C96Zev4DwW1v6VB8BPsRsDmfMmaJAQk+QbWWlAWzGkw
 ZhnP4iO0mrbMQIZ37ELZQ9yy5Ti/WJm3ypa/qDGmXNWa+bojstlLjX/9c8n4Np4SW8Jo
 nEaQ==
X-Gm-Message-State: APjAAAW3SlXfxUulcipPRbCxK0Nb8U3jF/doYtEzvwuZc8IpsJd2wmmc
 g0ZQIlynJGwUPOJu/6xaEWg=
X-Google-Smtp-Source: APXvYqw8wZl/LTWgg0Chrhk0TDYioBtuoFUHLvwZXVA3/hte6Kq+jsmDp9J3p5QcsrlFvFLn+mterA==
X-Received: by 2002:a5d:6ac8:: with SMTP id u8mr7431909wrw.104.1567780404007; 
 Fri, 06 Sep 2019 07:33:24 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s9sm9300198wme.36.2019.09.06.07.33.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 06 Sep 2019 07:33:23 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v3 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Fri,  6 Sep 2019 18:32:31 +0400
Message-Id: <1567780354-59472-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_073325_778929_50421B90 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

v2: correction of minor nits

v3: address regulator and GPIO corrections from Neil Armstrong (using
schematic excerpts from Ugoos) and related v2 comments from Martin
Blumenstingle. Add acks on patches 1/2 from Rob Herring.

Christian Hewitt (3):
  dt-bindings: Add vendor prefix for Ugoos
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 557 +++++++++++++++++++++
 4 files changed, 561 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
