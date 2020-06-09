Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0981F427B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=huBTaFF4tvCF+/pq/n8fU2zDfRAwEyXXJsJo8uxd7xA=; b=D13
	MqHdXICRPPNjMFH3Ps7rkmJ6mWZTmigqcbwQ+H/P27eZCgPGf6lLcp+06UyxooRvAwFxeATFC7oCj
	xTbAJ3B9JbeEGfnSBI4GRjnC7niHtnKDQt7pqbtt+EiDWmMFioj7nmObrD6C7W6kR5aisJixMJoyr
	+SHXzarYfnmNpBAVmOFuxDCrRe8P38a10XbzdBDE2lFIWHvUXHfcTg63TmsO5x1T3s9up+LtIxTmt
	B7inEZn0AAlcO109p8UHeNdAXkqorJXId7btEbIc4yYhU+wV8guf0oG8h7R8ydOO2k31ZB9Jscb85
	2HZVSGUT5pBkkMC9BwvIQifOlMch2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiAu-0007lK-76; Tue, 09 Jun 2020 17:36:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiAh-0007kN-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:36:25 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m25so4804104vsp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 10:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=+hfc168tUC+zhE7HdDbSPvhxjLmLqzpSRuwOiO02lUo=;
 b=itb2uLncUa38xuwzhKPG/cAifugxmQadT0b48g7STne0gbk3dYlJLHyvrrgArOoE+g
 qN5+xW0Sy643o1KJ42gsdooR6Kfk1UaeFE0DFm2TK5OEidPfa0gec1D42Pq2kI2linJe
 lBnS80uFIDJlutSoSyBgy99oynDCbR+nV1NObnIE29IOfr8Q3f48pQD4E4HD+IY7fmBR
 3eGYJJqr7Faqyo7a2X/Pk38PXkCl/uBYBcv7+L7UaTQghus1ROrWYJ1Rf+aioPB3joJX
 /pQeFm+RLm+MzAdDsRRYg2LKGBFsEG16IyGPUqE8q8YutEupgk7FgqD/O+FNqWXtlFOW
 g0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+hfc168tUC+zhE7HdDbSPvhxjLmLqzpSRuwOiO02lUo=;
 b=OzZxLtvlXzezzZaZdrSCNItzkiT5Xj4b/nOi27D2XGWfbNo2TJBREEAvE8sSHgxfZh
 Nz6OFHtP9uMduvcD6TG4IFBoOK0dP7COiCsoywhBgxAHE9bqSH0tiFF2pw9DQU3vQ9Fp
 3wI53EE5scGG7EG5aI+FDarTqR8+eQkAuWifrjhAGEdir0IUWU63a3lE8B/Yxjk38LO4
 +zF/dqOtWbOkf3odv9G+MnPN+k+6en8o3xN3UbG72uduQ3Of+pA0RRiFRrFk+aZNn3d9
 zwujZlNoM1gQAw5Fqa/8ofNTUqlh09Fqo2ATUSV5BjFOFZ0Dhe1h49bS4aVqsdyZ6nLD
 +7EA==
X-Gm-Message-State: AOAM531QuPuqoAfnJqtX6LZ0XvPAfFsJQyr+YFqYKb9sy5VYriij6aJr
 k/OS7Il65EWaNI4AO3sT/NfxLx+6W46N3R+D/j4=
X-Google-Smtp-Source: ABdhPJw/2fTGJwqklKkrDcB2UArjf16hmbr6TKwovs2+xdL81BE0n7Ouu4tJufHdu+KSm0ZrX2s861SskYQXto5PLDc=
X-Received: by 2002:a05:6102:20c8:: with SMTP id
 i8mr4861338vsr.106.1591724181524; 
 Tue, 09 Jun 2020 10:36:21 -0700 (PDT)
MIME-Version: 1.0
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Tue, 9 Jun 2020 23:06:10 +0530
Message-ID: <CAOuPNLj4m_jvs90YpAq5r4gAP9o8Y1Uck3HN+MbsTPb3zP=4eA@mail.gmail.com>
Subject: Generic way for verifying GPIO wakeup capability
To: Kernelnewbies <kernelnewbies@kernelnewbies.org>, 
 open list <linux-kernel@vger.kernel.org>, linux-pm@vger.kernel.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-gpio@vger.kernel.org, 
 zonque@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_103623_135672_C6186E41 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pintu.ping[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I am looking for ways to wakeup any devices (from sleep) using any
arbitrary gpio wakeup method in a generic way (either from user space
or kernel space) that should work on any kernel version (starting from
4.14 onwards).

What are the options available right now ?
I wanted to experiment with all of them and decide which is best for us.

Is /sys/class/gpio/ method still valid with the latest kernel ?
Or is there any other method to do it from user space ?

One option I know is to use enable/disable_irq_wake() API from kernel
driver suspend/resume path.
Just like this:
https://lwn.net/Articles/569027/

But this requires an additional kernel driver and device-tree changes
for each gpio wakeup, which the end-user needs to implement on their
own.

Is there any other existing generic mechanism?


Thanks,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
