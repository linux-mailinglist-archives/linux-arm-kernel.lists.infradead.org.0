Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A380EB682
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ITLyYSEz0+ZfBr9VemKoVr2qFLqslrJssXpUwBZEfZE=; b=KUk
	E5PG8Op6kMiBEVaVryr64eVBlk/M4uiaURYdKysmOjwROCqzDITF3pZaUcxsWc9v+pKRkJyc6llJi
	3rXJ8gFSEvcTZ1jEXrTZ4UzZ9WTLhqV8VvvXdkoJY4P7Ud3qz93iMtLo5A2fa5VinbYRaW2+XH/DN
	Q/oDJJnzU1v/5a3+YKKW4jaj64CpuQK0sx+FNICVace6HdWhsmCIHVM/KBMKA54E1MCYBbGSBtWYu
	pcxaryFgAmLSyeyQ47SI7K8/dJ5VTmFeDaQXqPCJU8UX88L9Xs/e/FpQ7cWs5COjQBgrngZKDtBWL
	GfbQIc4pB54pGSvNJQY1yHreVxRfbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEid-00088t-O7; Thu, 31 Oct 2019 17:58:47 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEiS-00088A-GA
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:58:37 +0000
Received: by mail-pl1-x62a.google.com with SMTP id y24so3015300plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6p3ywuf53bWKWHHevh50Ml2LimZ6glMYZNKbDrC4v98=;
 b=xGa98NdAYxbOq1ug4ttwQ2UNql6OhxIR673aHidRoHDIIHWQUwTcZWgj8+jGeyqIFQ
 bECFpsqNA+CGCGX2wxZyBdnY50QYUx6yXDdGgDTtsiStsWvVDKBlXAQobcx5xzWG6f+g
 aOfoF0AP2iYNgFTdE8EmhYJgPh6Jcv17O4mPGJPFE1T8QayL2Cz1xcYUfSiEvSvPRHvR
 QEJIpCrgCK3MaNTxVM5tzYFCTfoz+Q6jtfu4ZudDDOEdbDBMU/u2tyutv3Y8s7xAOe9s
 XIDXRKukLWJTN58uEMmnUtuwddeUQN0EtgY+xQds0/HMia7JsUqUY8YPBmVzWEne527d
 LKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6p3ywuf53bWKWHHevh50Ml2LimZ6glMYZNKbDrC4v98=;
 b=b0S+lVgnDNgOSaeGWIRiUTvl7ATU3auQyTSK2fXZVsVo0/5m1hP9J+XXra5Vbhgo0N
 EALCkVlBjgCDTXCpzV7Dvk2QRBOgdEfizwpT6rw9bDPmeHnAckg5Ec7sQf+u6MtOD6Hp
 0ezwTbCK9CTTX2HmbvBHMftxoQh0OUe+fn4jnG1ki4yRjunB1XmdQjUJLn6STjUHueR9
 kiGTuNVnW9yFa3oBEfm8NmCxy3vxYRBBG2Iqq9DBADqQhLlfutOe9/OTBya1Hq0YUO6d
 bPapQBWkU70IFF1wDqnEXM8QqD5TVoSQ2T9mHgzCGJDYhL9cT7+e59PcJ5GxNZZIbbD5
 ORvg==
X-Gm-Message-State: APjAAAXh5ZUOb98Om8BkY1uSCHae7X8EQy4V6RtbiTp/81ch9gryMuF3
 ql3Rhl52wc4w5CiWHM2Aivrhaw==
X-Google-Smtp-Source: APXvYqwFB7XQpl+UDQ+wRv3z6CI9YpJNwLDniZXRi7Ul1eD7/eRyBjKjIopFI2DToJqBeWyilRkgpw==
X-Received: by 2002:a17:902:9691:: with SMTP id
 n17mr2163167plp.12.1572544715475; 
 Thu, 31 Oct 2019 10:58:35 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c6sm4382210pfj.59.2019.10.31.10.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 10:58:35 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: corbet@lwn.net
Subject: [PATCH 0/4] coresight: Documentation: next v5.4-rc5 
Date: Thu, 31 Oct 2019 11:58:30 -0600
Message-Id: <20191031175834.17548-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_105836_542736_2B3FC58F 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good day Jonathan,

Please consider the following patches for inclusion in the next merge window.

Thanks,
Mathieu

Mike Leach (4):
  coresight: etm4x: docs: Update ABI doc for new sysfs name scheme.
  coresight: etm4x: docs: Update ABI doc for new sysfs etm4 attributes
  coresight: docs: Create common sub-directory for coresight trace.
  coresight: etm4x: docs: Adds detailed document for programming etm4x.

 .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++--
 .../{ => coresight}/coresight-cpu-debug.rst   |   0
 .../coresight/coresight-etm4x-reference.rst   | 798 ++++++++++++++++++
 .../trace/{ => coresight}/coresight.rst       |   2 +-
 Documentation/trace/coresight/index.rst       |   9 +
 Documentation/trace/index.rst                 |   3 +-
 MAINTAINERS                                   |   3 +-
 7 files changed, 925 insertions(+), 73 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
 create mode 100644 Documentation/trace/coresight/coresight-etm4x-reference.rst
 rename Documentation/trace/{ => coresight}/coresight.rst (99%)
 create mode 100644 Documentation/trace/coresight/index.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
