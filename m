Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ABD482FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+nO5+q/G3VjGnzz7yowi+wnHfEzQ+rIj8nTf18PV+Bc=; b=MxZ
	d6g87fz1fQCG3QHN2eO7Xp3ynPxYtC4/vmvKqM5urBBlqDd+m2y0v0o1Q2Qjh3OvCbkxRspTa0H42
	cEVCjwgWJ+Eu2hy/LwirBsLi45Lvqd+Oz7wOLgtUdis+LCM+jJm7KpzfgX+/X44isO1sAmWVS89lE
	vQnDaxG1dBs8eMP3hI8kddScIrQTjjc6OT4RUwNPIs8MuJyr+pe9RnqJT24LN1dTFifuJiBgmfw3q
	sFoEx8zAMX72sbTRMnC9nyq1k4+4zGeJ3qem9LwO8Z5AsAqhjWmnhwfp8+U3EntQVJiizhVG2kkRC
	dvUU4nB/r6bCYyhK9RvHTTyxkDs9l7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr6V-0004h4-In; Mon, 17 Jun 2019 12:51:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr6M-0004gE-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:51:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so9814460wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5bmkX35OV+Un6bMajgKlhe2VCa9szCQ2ZkSqsLoxX0o=;
 b=SkGqB8nJ/IEWG4IXm6QepVKAPERnunfILKb8Kq1MbhkJjXx3UULfKVudbA72IOKn4f
 G62Fr3PqgKzQKcNsmyBRXyveUf+dHEtdCXtQsE3gTVZVWnfWkldCrMnFs2slVkltx4Gb
 8AATCMbXrzOzWwipup1IO6zK1olLm9TmFGFjp+3h5Yjpcyz6iiNP46kZZ3t5mshsqkkB
 uUfjeYjyZ9Qx603esC/J+weA9ps0NBpcyLjXqm3f6wYZUVQ8smY0LRF+HMW2KQdWf9ZA
 5xqUxmiRTeR1e7KAm+OpIrpAp3jU3t2gdQNZWCNNhR7OlH8K5th6Jk4140PPDGahTHVY
 aqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5bmkX35OV+Un6bMajgKlhe2VCa9szCQ2ZkSqsLoxX0o=;
 b=LNfT+dQozeK/ruiqFfBBtwecLzUtHznSK5k/iQHw/GKsEoiAiEHpQxj4eQN2NlvaJZ
 u2vAZYOdPiTDQ0xXGC6UqfSBKJuK6aoJAGY29PTaLJE03yzSulGDLEmkG2/iSXLJXnJ9
 JsT8iOz0+MKUJENS36lWDiRqMgmzdB2dj+Toki0CPQe4GbEd0kmIH7KEtkFhZJxLHS7D
 lx2YNxyCD3q3EkHvtai+FQXv98khIqjKdpjjtIcz7g1veufKhnQC38VtUURgCllU9i7i
 WZ/pjZvmG8XbSvv10EK539gNKIQaj4JqT2s9Ly2tskUdhSbvzJsYuNV34+yqJD/zEB0M
 cIEA==
X-Gm-Message-State: APjAAAUT/sYNslwmETsaGzpPQbAQUCaexPid71PyFLmem/y+nU5DnPrA
 +Oijvwa4BTIvQ7RdrLjgzleKgw==
X-Google-Smtp-Source: APXvYqw7cAvvCpSNGdJ5pbIUQp1AMGTBLl023D9nSX8+bxc3wDDiQnF3ftT8PtAoEjuj1WIEl1FdVg==
X-Received: by 2002:adf:f84f:: with SMTP id d15mr75718744wrq.53.1560775868649; 
 Mon, 17 Jun 2019 05:51:08 -0700 (PDT)
Received: from dell.watershed.co.uk ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id o11sm10477852wmh.37.2019.06.17.05.51.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 05:51:08 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 bjorn.andersson@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, felipe.balbi@linux.intel.com
Subject: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based AArch64
 Laptops
Date: Mon, 17 Jun 2019 13:51:01 +0100
Message-Id: <20190617125105.6186-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055110_544444_AE48F30E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set ensures the kernel is bootable on the newly released
AArch64 based Laptops using ACPI configuration tables.  The Pinctrl
changes have been accepted, leaving only I2C (keyboard, touchpad,
touchscreen, fingerprint, etc, HID device) and USB (root filesystem,
camera, networking, etc) enablement.

RESEND: Stripped I2C patches as they have also been merged into
        their respective subsystem.

v4:
 * Collecting Acks
 * Adding Andy Gross' new email
 * Removing applied Pinctrl patches

Lee Jones (4):
  soc: qcom: geni: Add support for ACPI
  usb: dwc3: qcom: Add support for booting with ACPI
  usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
  usb: dwc3: qcom: Improve error handling

 drivers/soc/qcom/qcom-geni-se.c |  21 ++-
 drivers/usb/dwc3/Kconfig        |   2 +-
 drivers/usb/dwc3/dwc3-qcom.c    | 221 ++++++++++++++++++++++++++++----
 3 files changed, 209 insertions(+), 35 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
