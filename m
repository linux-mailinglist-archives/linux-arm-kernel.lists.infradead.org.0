Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE26184586
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a450qP+Xa07WPvZpxVBzJ78L2A2h+CEBC7Iwr++TIRI=; b=f6Hw8J9fNeV5pV
	rH305QFws4hvs+g7pKYs81BGbEyDoWyjE7ijzp2IsGU3oXm9Qh4RBfy2OQl4K00t/VGBHJYtmvUj6
	Eiy3v/BjQ7zTlpugMI9H0K1X1Gb7iA5UQ72dgqGbR1B0Qj4sT+QaDVyoY4R5WuFlGRjpkwJ/UN2Do
	v4toIo0ZY4+HzF0KexVdR/JNstGErZedW4xyUQsr3TmSR8iRcLSBHVtgYfrWiO9bmjrmpCK9rh5xw
	syyhRDxS2xgesnkNJZCRUzFWc9T5qLivC6hUj7q2g/tfmwOVhfzcjpnBs/W/o7viQnKFpcRHUA8iE
	3v7LBQQ0kOgUXqf4gTkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi7J-0001aq-3p; Fri, 13 Mar 2020 11:04:37 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi6q-0001IU-24
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:04:09 +0000
Received: by mail-wm1-x330.google.com with SMTP id 6so9433059wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 04:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w2E4KEZKaVDRYwIZNq87wG0kGHEBrb12/0HT+rY65w0=;
 b=Vjrkrms13ezAAsNBrf4Aw3643PvilA7lHREO2Rje7EPz5HKIhn6PK7nFyIG10khzhI
 gjQgVYI8w2j/TCZmWE4/qsTEYFwgLErPxhhX893U8Qg0gq9D23tV/AanxjmUS6mGI7Nu
 dJ4WZmX8l5nPI005siYUimKql3oZc062Ruvly56AaIpSlKikWM42Xx1/SNfXR456D2Uy
 4Nm2keDF+/LIPRvjYhJV2u7oMLrc19xBe1vjw15IUjIYCoZo/T3dhg3wCCaCvMqdJ7vK
 loIGsgKy0neWEonPTWCs9EQ/OXPNeJ3yGblU/tp9iKqPmCNVyYHyg23E0FwcfUVKbe7H
 A4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w2E4KEZKaVDRYwIZNq87wG0kGHEBrb12/0HT+rY65w0=;
 b=avlqomeAVB4qPZoHWHQFH41aVBJvj9L99qJX2E4w+OSQXhkwZUFpw5uHGh3L63jq4o
 XeaA1fKqhP6UaEvXumE8LMn5w6GWIFs6dpWkh9EeQuhoiqsrCnmGbY2ED5+MqMPcX6dX
 +vYX0vTnW8a5RsSDsS3iaUWpsgpsMFSeSFkzrkSse0HesL3MXSJ5ORyta7TTWlkg87Ul
 2i7UkAtxW5ClFc4anitjP1bMj7WmSlKlo+gc4n+UoOqAzJKwqwnZ4+xzX4TKl0fX8GDE
 yXWthrtXWdG0G8oSfON2aJ6GNC4ZoAcvAwn9CUCewFkcXZ+mpLqdVHkigYGE7r1JhzHz
 +MXA==
X-Gm-Message-State: ANhLgQ19BKPaZoq2ddA+aroqQal92H/kalu48ULZ8Y0Ei1PV/paO5KGn
 hqlZsye5Mzm9bAFtE4arcMkcrw==
X-Google-Smtp-Source: ADFU+vt0bW6bGGlAkijDQUDmrP+c49Qo/GdKOBADGoqQJMl248Gzb6VsDZxp8+EgPXENT81KeoRFXw==
X-Received: by 2002:a1c:4f:: with SMTP id 76mr10541710wma.28.1584097446011;
 Fri, 13 Mar 2020 04:04:06 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:c814:5be4:577e:3bd5])
 by smtp.gmail.com with ESMTPSA id r23sm23578052wrr.93.2020.03.13.04.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 04:04:05 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [v2 0/3] media: ov8856: Add devicetree support
Date: Fri, 13 Mar 2020 12:03:47 +0100
Message-Id: <20200313110350.10864-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040408_124700_666B10C0 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds devicetree support to the ov8856 driver.
In order to to aid debugging and enable future sensor
modes to be supported, module revision detection is also added.

Dongchun Zhu (1):
  media: dt-bindings: ov8856: Document YAML bindings

Robert Foss (2):
  media: ov8856: Add devicetree support
  media: ov8856: Implement sensor module revision identification

 .../devicetree/bindings/media/i2c/ov8856.yaml | 133 +++++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 151 +++++++++++++++++-
 3 files changed, 283 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
