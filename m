Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA3D575D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 20:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr9yva1iDsr9f3Fb5eW5RM33cJ6+0Q3Y9rGmJ551TeQ=; b=ABC6siCJR0o44p
	nawMrEAcnyp7jZqLGc/npYpEq1DTn4jHAJWvFJEeXeb9gKiDUXJXdYgySzIwDzdoIYcQQvylWQdPb
	pq3f56+0l0zQ3VBjilQwXdXGlPA+lDI+gaLMNq464aMi10WlYett6xX3VO6y/J/lzaTJEklDz4dpN
	ZkMi3oJiXp6DNZ819k9l97BYVK4iQLD2s8BGGrU+juuTgdmfMxJ0t5ZVs3X38CRpeelbd31V8VikR
	zNsRtzdu4I2idt1x8x/vHyEK1YT5IIKtJ2qmHePscrZfD6xD0KoAAhXEve9yuUa0I+saXrSpfpOUG
	F12ze/y/Cj9XltfqPAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJihl-00074l-SG; Sun, 13 Oct 2019 18:34:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJihR-0006vT-CW; Sun, 13 Oct 2019 18:34:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id p14so17119036wro.4;
 Sun, 13 Oct 2019 11:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0hb/QoJuRlI9kZEWMbvwFXFmysWx0MkZJWXl1KLvPB4=;
 b=sKGlMmghr6ZuMCYuktwulfawWdCQo1IFkR3Tue8bB6ngNP8G1pPToyTI7xy7mKTVw7
 3eQnRbqgFRi1nyXlX5lu0ry+oSruM+YAqUgYtUl18wk2id2IDCM/4v/DCv9EhYW4/sXS
 P3T92m1KI0TI4EIb5Ud2Lq8Wd7CUks4w6D0tKDt1NiJKH7l/BTWfpOAHQ9NL+Mtqj9VV
 xZ803UA04mxew9oNUVDI2BrgBnRpAOYE1OceMsyPJV6C+5JvUjTD/e/EwNpp5uVCaYAD
 6i1Mj0Yq016QPs2PeVR2m0rVkwF2pWGe/7XNnQ9iuX1maCsPSVEAXVweLHrmnqjlSm1s
 cJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0hb/QoJuRlI9kZEWMbvwFXFmysWx0MkZJWXl1KLvPB4=;
 b=ebxDmPGLTuPKKjTpqJceRteXinSEc1qoXhTvnzQ9Pzq9PnFtHI1PDpWwKVHjyBzRyE
 oQM1CvoemDcqliwYto+LCpvbpKCc+R27+Iuxc2CWyLDtk6LMDiw/gSvj69lFCSTD6po+
 INa7dv+LegAsEftlrJIMaQrM2nDH7x8ZMON+PTTvQEqPjiGxq2lbx7aEZ4OMDnsWM70n
 rnJmyQlQ1wnYE57/35lpNcx/2GZTbLtTtqIIIY/LQvMQV/D8IBMRd5hOHeVcuUMStICt
 CNwjf5XLS1mJwkPZF5icd+ZCVuJkSr/1bT+MRneBGo+K2DZqIPBG00jDwM+pHrNJR8lt
 SFbw==
X-Gm-Message-State: APjAAAXrh4Rh3eDHfoPPWYVFDfuUli3nK4U9bqQn789332midWqWSOWY
 Mu0YL3uhmgLzRlAWrYc5lg==
X-Google-Smtp-Source: APXvYqzTvZcN4wrnNEZvhE/ZdYUIk7syUZhfrxZ6+d+/ELfaPkQGOHGhqC4RKzEM5epkoEUXBmZBwA==
X-Received: by 2002:a05:6000:1048:: with SMTP id
 c8mr7978617wrx.349.1570991674029; 
 Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id q124sm32228220wma.5.2019.10.13.11.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 11:34:33 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: vc04_services: fix lines ending with open
 parenthesis
Date: Sun, 13 Oct 2019 19:34:20 +0100
Message-Id: <20191013183420.13785-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
References: <20191013183420.13785-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_113437_434513_5789949E 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
Within "controls.c", "mmal-vchiq.c" and" mmal-vchiq.h" files.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/bcm2835-camera/controls.c   | 208 +++++++++---------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  20 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.h |  54 ++---
 3 files changed, 138 insertions(+), 144 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 89786c264867..015ace1e9506 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -67,10 +67,9 @@ enum bm2835_mmal_ctrl_type {
 
 struct bm2835_mmal_v4l2_ctrl;
 
-typedef	int(bm2835_mmal_v4l2_ctrl_cb)(
-				struct bm2835_mmal_dev *dev,
-				struct v4l2_ctrl *ctrl,
-				const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl);
+typedef	int(bm2835_mmal_v4l2_ctrl_cb)(struct bm2835_mmal_dev *dev,
+				      struct v4l2_ctrl *ctrl,
+				      const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl);
 
 struct bm2835_mmal_v4l2_ctrl {
 	u32 id; /* v4l2 control identifier */
@@ -169,7 +168,7 @@ static int ctrl_set_rational(struct bm2835_mmal_dev *dev,
 	rational_value.num = ctrl->val;
 	rational_value.den = 100;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &rational_value,
 					     sizeof(rational_value));
@@ -186,7 +185,7 @@ static int ctrl_set_value(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -214,7 +213,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
 	else
 		u32_value = 0;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     MMAL_PARAMETER_ISO,
 					     &u32_value, sizeof(u32_value));
 }
@@ -230,7 +229,7 @@ static int ctrl_set_value_ev(struct bm2835_mmal_dev *dev,
 
 	s32_value = (ctrl->val - 12) * 2;	/* Convert from index to 1/6ths */
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &s32_value, sizeof(s32_value));
 }
@@ -247,19 +246,19 @@ static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
 
 	u32_value = ((ctrl->val % 360) / 90) * 90;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[0],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance, &camera->output[0],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[1],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance, &camera->output[1],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vmp_prmtr_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
 }
@@ -288,21 +287,24 @@ static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
 	else
 		u32_value = MMAL_PARAM_MIRROR_NONE;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[0],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance,
+			    &camera->output[0],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[1],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance,
+			    &camera->output[1],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	return vmp_prmtr_set(dev->instance,
+			     &camera->output[2],
+			     mmal_ctrl->mmal_id,
+			     &u32_value, sizeof(u32_value));
 }
 
 static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
@@ -341,16 +343,16 @@ static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
 		if (exp_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
 			shutter_speed = dev->manual_shutter_speed;
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exp_mode,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance,
+				    control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exp_mode,
+				     sizeof(u32));
 		dev->exposure_mode_active = exp_mode;
 	}
 	/* exposure_dynamic_framerate (V4L2_CID_EXPOSURE_AUTO_PRIORITY) should
@@ -391,7 +393,7 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 
 		control = &dev->component[COMP_CAMERA]->control;
 
-		return vchiq_mmal_port_parameter_set(dev->instance, control,
+		return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 	} else {
@@ -423,7 +425,7 @@ static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -479,7 +481,7 @@ static int ctrl_set_awb_mode(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -502,7 +504,7 @@ static int ctrl_set_awb_gains(struct bm2835_mmal_dev *dev,
 	gains.b_gain.num = dev->blue_gain;
 	gains.r_gain.den = gains.b_gain.den = 1000;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &gains, sizeof(gains));
 }
@@ -541,17 +543,15 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 
 			control = &dev->component[COMP_CAMERA]->control;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
-					&imagefx, sizeof(imagefx));
+			ret = vmp_prmtr_set(dev->instance, control,
+					    MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
+					    &imagefx, sizeof(imagefx));
 			if (ret)
 				goto exit;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_COLOUR_EFFECT,
-					&dev->colourfx, sizeof(dev->colourfx));
+			ret = vmp_prmtr_set(dev->instance, control,
+					    MMAL_PARAMETER_COLOUR_EFFECT,
+					    &dev->colourfx, sizeof(dev->colourfx));
 		}
 	}
 
@@ -577,10 +577,10 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,
 	dev->colourfx.u = (ctrl->val & 0xff00) >> 8;
 	dev->colourfx.v = ctrl->val & 0xff;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, control,
-					    MMAL_PARAMETER_COLOUR_EFFECT,
-					    &dev->colourfx,
-					    sizeof(dev->colourfx));
+	ret = vmp_prmtr_set(dev->instance, control,
+			    MMAL_PARAMETER_COLOUR_EFFECT,
+			    &dev->colourfx,
+			    sizeof(dev->colourfx));
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
@@ -600,9 +600,9 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
 
 	encoder_out = &dev->component[COMP_VIDEO_ENCODE]->output[0];
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					    mmal_ctrl->mmal_id, &ctrl->val,
-					    sizeof(ctrl->val));
+	ret = vmp_prmtr_set(dev->instance, encoder_out,
+			    mmal_ctrl->mmal_id, &ctrl->val,
+			    sizeof(ctrl->val));
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
@@ -637,10 +637,10 @@ static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-				      mmal_ctrl->mmal_id,
-					     &bitrate_mode,
-					     sizeof(bitrate_mode));
+	vmp_prmtr_set(dev->instance, encoder_out,
+		      mmal_ctrl->mmal_id,
+		      &bitrate_mode,
+		      sizeof(bitrate_mode));
 	return 0;
 }
 
@@ -655,7 +655,7 @@ static int ctrl_set_image_encode_output(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, jpeg_out,
+	return vmp_prmtr_set(dev->instance, jpeg_out,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -671,7 +671,7 @@ static int ctrl_set_video_encode_param_output(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, vid_enc_ctl,
+	return vmp_prmtr_set(dev->instance, vid_enc_ctl,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -779,8 +779,8 @@ static int ctrl_set_video_encode_profile_level(struct bm2835_mmal_dev *dev,
 			break;
 		}
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    &dev->component[COMP_VIDEO_ENCODE]->output[0],
+		ret = vmp_prmtr_set(dev->instance,
+				    &dev->component[COMP_VIDEO_ENCODE]->output[0],
 			mmal_ctrl->mmal_id,
 			&param, sizeof(param));
 	}
@@ -816,22 +816,22 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
 			 __func__, shutter_speed, dev->exposure_mode_user,
 			 dev->metering_mode);
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &dev->exposure_mode_user,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance,
+				    control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &dev->exposure_mode_user,
+				     sizeof(u32));
 		dev->exposure_mode_active = dev->exposure_mode_user;
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXP_METERING_MODE,
-						     &dev->metering_mode,
-						     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXP_METERING_MODE,
+				     &dev->metering_mode,
+				     sizeof(u32));
 		ret += set_framerate_params(dev);
 	} else {
 		/* Set up scene mode */
@@ -867,23 +867,23 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
 			 __func__, shutter_speed, exposure_mode, metering_mode);
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance, control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exposure_mode,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance, control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exposure_mode,
+				     sizeof(u32));
 		dev->exposure_mode_active = exposure_mode;
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exposure_mode,
-						     sizeof(u32));
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXP_METERING_MODE,
-						     &metering_mode,
-						     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exposure_mode,
+				     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXP_METERING_MODE,
+				     &metering_mode,
+				     sizeof(u32));
 		ret += set_framerate_params(dev);
 	}
 	if (ret) {
@@ -1208,18 +1208,18 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 		 fps_range.fps_high.num,
 		 fps_range.fps_high.den);
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance,
-					    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW],
-					    MMAL_PARAMETER_FPS_RANGE,
-					    &fps_range, sizeof(fps_range));
-	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO],
-					     MMAL_PARAMETER_FPS_RANGE,
-					     &fps_range, sizeof(fps_range));
-	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE],
-					     MMAL_PARAMETER_FPS_RANGE,
-					     &fps_range, sizeof(fps_range));
+	ret = vmp_prmtr_set(dev->instance,
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW],
+			    MMAL_PARAMETER_FPS_RANGE,
+			    &fps_range, sizeof(fps_range));
+	ret += vmp_prmtr_set(dev->instance,
+			     &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO],
+			     MMAL_PARAMETER_FPS_RANGE,
+			     &fps_range, sizeof(fps_range));
+	ret += vmp_prmtr_set(dev->instance,
+			     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE],
+			     MMAL_PARAMETER_FPS_RANGE,
+			     &fps_range, sizeof(fps_range));
 	if (ret)
 		v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Failed to set fps ret %d\n", ret);
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 1c180ead4a20..8ff21a90d5ef 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1397,9 +1397,9 @@ int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 	return ret;
 }
 
-int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
-				  struct vchiq_mmal_port *port,
-				  u32 parameter, void *value, u32 value_size)
+int vmp_prmtr_set(struct vchiq_mmal_instance *instance,
+		  struct vchiq_mmal_port *port,
+		  u32 parameter, void *value, u32 value_size)
 {
 	int ret;
 
@@ -1482,9 +1482,9 @@ int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 /* ports will be connected in a tunneled manner so data buffers
  * are not handled by client.
  */
-int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-				   struct vchiq_mmal_port *src,
-				   struct vchiq_mmal_port *dst)
+int vmp_cnnct_tunnel(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_port *src,
+		     struct vchiq_mmal_port *dst)
 {
 	int ret;
 
@@ -1718,8 +1718,8 @@ int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
 /*
  * cause a mmal component to be enabled
  */
-int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
-				struct vchiq_mmal_component *component)
+int vm_cmpnt_enable(struct vchiq_mmal_instance *instance,
+		    struct vchiq_mmal_component *component)
 {
 	int ret;
 
@@ -1743,8 +1743,8 @@ int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
 /*
  * cause a mmal component to be enabled
  */
-int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,
-				 struct vchiq_mmal_component *component)
+int vm_cmpnt_disable(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_component *component)
 {
 	int ret;
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 47897e81ec58..a24caab09784 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -41,11 +41,10 @@ struct vchiq_mmal_port_buffer {
 
 struct vchiq_mmal_port;
 
-typedef void (*vchiq_mmal_buffer_cb)(
-		struct vchiq_mmal_instance  *instance,
-		struct vchiq_mmal_port *port,
-		int status, struct mmal_buffer *buffer,
-		unsigned long length, u32 mmal_flags, s64 dts, s64 pts);
+typedef void (*vchiq_mmal_buffer_cb)(struct vchiq_mmal_instance  *instance,
+				     struct vchiq_mmal_port *port,
+				     int status, struct mmal_buffer *buffer,
+				     unsigned long length, u32 mmal_flags, s64 dts, s64 pts);
 
 struct vchiq_mmal_port {
 	u32 enabled:1;
@@ -99,32 +98,27 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance);
 /* Initialise a mmal component and its ports
  *
  */
-int vchiq_mmal_component_init(
-		struct vchiq_mmal_instance *instance,
-		const char *name,
-		struct vchiq_mmal_component **component_out);
+int vchiq_mmal_component_init(struct vchiq_mmal_instance *instance,
+			      const char *name,
+			      struct vchiq_mmal_component **component_out);
 
-int vchiq_mmal_component_finalise(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
+				  struct vchiq_mmal_component *component);
 
-int vchiq_mmal_component_enable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vm_cmpnt_enable(struct vchiq_mmal_instance *instance,
+		    struct vchiq_mmal_component *component);
 
-int vchiq_mmal_component_disable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vm_cmpnt_disable(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_component *component);
 
 /* enable a mmal port
  *
  * enables a port and if a buffer callback provided enque buffer
  * headers as appropriate for the port.
  */
-int vchiq_mmal_port_enable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_port *port,
-		vchiq_mmal_buffer_cb buffer_cb);
+int vchiq_mmal_port_enable(struct vchiq_mmal_instance *instance,
+			   struct vchiq_mmal_port *port,
+			   vchiq_mmal_buffer_cb buffer_cb);
 
 /* disable a port
  *
@@ -133,11 +127,11 @@ int vchiq_mmal_port_enable(
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 			    struct vchiq_mmal_port *port);
 
-int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
-				  struct vchiq_mmal_port *port,
-				  u32 parameter,
-				  void *value,
-				  u32 value_size);
+int vmp_prmtr_set(struct vchiq_mmal_instance *instance,
+		  struct vchiq_mmal_port *port,
+		  u32 parameter,
+		  void *value,
+		  u32 value_size);
 
 int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -148,9 +142,9 @@ int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 			       struct vchiq_mmal_port *port);
 
-int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-				   struct vchiq_mmal_port *src,
-				   struct vchiq_mmal_port *dst);
+int vmp_cnnct_tunnel(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_port *src,
+		     struct vchiq_mmal_port *dst);
 
 int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 		       u32 *major_out,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
